<?php
namespace App\Controller\Component;

require_once(ROOT . DS . 'vendor' . DS . "PHPExcel_1_8_0" . DS . 'Classes' . DS . "PHPExcel.php");

use Cake\Controller\Component;
use PHPExcel;
use PHPExcel_IOFactory;
use Cake\ORM\TableRegistry;
use PHPExcel_Style_Fill;

class ExcelComponent extends Component
{
    public function columnToArray($sheetData, $columnLetter, $rowNumber)
    {
        $columnArray = [];
        for($i = $rowNumber;; $i++){
            if(!isset($sheetData[$i][$columnLetter]) || $sheetData[$i][$columnLetter] == NULL){
                break;
            }
            $columnArray[] = $sheetData[$i][$columnLetter];
        }
        return $columnArray;
    }

    public function transformRowIntoEntity($sheetData, $keys, $startRow, $entityName){
        $productEntities = [];
        $qtdRows = count($sheetData)+1;
        for($i = $startRow; $i < $qtdRows; $i++){

            $entity = TableRegistry::get($entityName)->newEntity();
            foreach($keys as $key => $value){
                $entity->$value = $sheetData[$i][$key];
            }
            $productEntities[] = $entity;
        }
        return $productEntities;
    }

    public function importExcel($spreadSheetName, $sheetName){
        $fileType = 'Excel2007';
        $fileName = dirname(ROOT) . DS . 'ShoppingResources' . DS . 'spreadsheet' .
            DS . 'sample' . DS . $spreadSheetName;

        // Create a new Reader of the type defined in $inputFileType
        $objReader = PHPExcel_IOFactory::createReader($fileType);

        // Advise the Reader of which WorkSheets we want to load
        $objReader->setLoadSheetsOnly($sheetName);

        // Advise the Reader that we only want to load cell data
        $objReader->setReadDataOnly(true);

        // Load $inputFileName to a PHPExcel Object
        $objPHPExcel = $objReader->load($fileName);

        return $objPHPExcel->getActiveSheet()->toArray(null,true,true,true);
    }

    public function exportExcel($objPHPExcel, $fileType, $fileNameWithPath){
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, $fileType);
        $objWriter->save($fileNameWithPath);
    }

    public function transformEntityIntoRow($spreadSheetHeader, $dataFromDataBase){
    //public function transformEntityIntoRow($bankData ,$entityName){
        // Instanciamos a classe
        $objPHPExcel = new PHPExcel();

        // Podemos definir as propriedades do documento
        $objPHPExcel->getProperties()->setCreator('Magma TI')
            ->setLastModifiedBy('Ricardo')
            ->setTitle('Dados do USUÁRIO')
            ->setSubject('Produtos e Ofertas')
            ->setDescription('Planilha contendo Produtos e Ofertas do USUÁRIO');

        $contSpreadSheet = 0;
        $spreadSheetQuantity = count($spreadSheetHeader);

        /**
         * foreach responsável pela criação de cada planilha dentro
         * do arquivo excel (note que é possivel ter varias planilhas
         * dentro de um mesmo arquivo excel).
         */
        foreach ($spreadSheetHeader as $key => $value) {
            $spreadSheetCell = 'A';
            $spreadSheetRow = 2;

            $objPHPExcel->setActiveSheetIndex($contSpreadSheet);
            $objPHPExcel->getActiveSheet()->setTitle($key);

            /**
             * foreach responsável pelo povoamento do header de cada
             * planilha.
             */
            foreach ($value as $cell => $header) {
                $objPHPExcel->getActiveSheet()
                    ->setCellValue($cell, $header);

                $objPHPExcel->getActiveSheet()->getStyle($cell)
                    ->getFont()->setBold(true);

                $objPHPExcel->getActiveSheet()->getColumnDimension($cell[0])->setWidth(30);

                $objPHPExcel->getActiveSheet()->getStyle($cell)->applyFromArray(
                    ['fill' => [
                        'type' => PHPExcel_Style_Fill::FILL_SOLID,
                        'color' => array('rgb' => '333333')
                    ],
                    ]
                );
            }

            /**
             * foreach resposável por preencher a tabela com os valores vindos do banco
             *
             * INCOMPLETO falta fazer com que imprima todos os componentes da Row e de
             * todas as planilhas, Creio que a solução passa por fazer iterações
             * genericas nos indices do array $data
             */
            foreach($dataFromDataBase[$contSpreadSheet] as $data){
                $objPHPExcel->setActiveSheetIndex($contSpreadSheet)
                    ->setCellValue($spreadSheetCell . $spreadSheetRow,
                        $data['product_name']);
                $spreadSheetRow++;
            }

            /**
             * if resposável por checar se existe uma próxima planilha caso tenha
             * cria uma nova planilha.
             */
            if($contSpreadSheet + 1 < $spreadSheetQuantity) {
                $objPHPExcel->createSheet();
                $contSpreadSheet++;
            }
        }

        $objPHPExcel->setActiveSheetIndex(0);

        /*// Criamos as colunas
        $objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A1', 'Produto')
            ->setCellValue('B1', 'Quantidade')
            ->setCellValue('C1', 'Preço');

        // Definimos o estilo da fonte
        $objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
        $objPHPExcel->getActiveSheet()->getStyle('B1')->getFont()->setBold(true);
        $objPHPExcel->getActiveSheet()->getStyle('C1')->getFont()->setBold(true);

        // Podemos configurar diferentes larguras paras as colunas como padrão
        $objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(30);
        $objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(30);
        $objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(30);

        // Adicionamos um estilo de A1 até D1
        $objPHPExcel->getActiveSheet()->getStyle('A1:C1')->applyFromArray(
            ['fill' => [
                    'type' => PHPExcel_Style_Fill::FILL_SOLID,
                    'color' => array('rgb' => '1D9D74')
                ],
            ]
        );

        // Alterando o tamanho da fonte
        $objPHPExcel->getActiveSheet()->getStyle('A1:C1')->getFont()->setSize(15);

        // Também podemos escolher a posição exata aonde o dado será inserido
        // (coluna, linha, dado);
        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(0, 2, 'Produto 1');
        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(1, 2, 5);
        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(2, 2, 5.46);

        $objPHPExcel->getActiveSheet()->setTitle('Produtos');

        // Criando uma nova planilha dentro do arquivo
        $objPHPExcel->createSheet();

        //Passar por parâmetro qual planilha definir como ativa
        // Cria as colunas na segunda planilha
        $objPHPExcel->setActiveSheetIndex(1)
            ->setCellValue('A1', 'Oferta')
            ->setCellValue('B1', 'Descrição')
            ->setCellValue('C1', 'Data de Inicio')
            ->setCellValue('D1', 'Data de Fim');

        $objPHPExcel->getActiveSheet()->setTitle('Ofertas');

        $objPHPExcel->setActiveSheetIndex(0); */

        return $objPHPExcel;
    }
}