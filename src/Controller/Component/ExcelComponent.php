<?php
namespace App\Controller\Component;

use Cake\Controller\Component;
use PHPExcel;
use PHPExcel_IOFactory;
use PHPExcel_Style_Fill;

class ExcelComponent extends Component
{
    public function exportExcel($objPHPExcel, $fileType, $fileNameWithPath){
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, $fileType);
        $objWriter->save($fileNameWithPath);
    }

    public function transformEntityIntoRow($spreadSheetHeader, $dataFromDataBase, $fields){

        $objPHPExcel = new PHPExcel();

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
            $spreadSheetRow = 2;
            foreach($dataFromDataBase[$contSpreadSheet] as $data){

                $spreadSheetCell = 'A';
                foreach($fields[$contSpreadSheet] as $key => $value){

                    /**
                     * Checa se o valor é do tipo 'Cake\I18n\Time' se for deve-se
                     * trabalhar este objeto para retornar uma string para que possa
                     * ser inserido na planhilha excel.
                     */
                    if(@get_class($data[$value]) == 'Cake\I18n\Time'){
                        $cellValue = $data[$value]->i18nFormat('yyyy-MM-dd HH:mm:ss');
                    }else{
                        $cellValue = $data[$value];
                    }

                    $objPHPExcel->setActiveSheetIndex($contSpreadSheet)
                        ->setCellValue($spreadSheetCell . $spreadSheetRow,
                            $cellValue);
                    $spreadSheetCell++;
                }
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

        return $objPHPExcel;
    }
}