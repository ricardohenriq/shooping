<?php
namespace App\Controller\Component;

require_once(ROOT . DS . 'vendor' . DS . "PHPExcel_1_8_0" . DS . 'Classes' . DS . "PHPExcel.php");

use Cake\Controller\Component;
use PHPExcel;
use PHPExcel_IOFactory;
use Cake\ORM\TableRegistry;

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
        $inputFileType = 'Excel2007';
        $inputFileName = dirname(ROOT) . DS . 'ShoppingResources' . DS . 'spreadsheet' .
            DS . 'sample' . DS . $spreadSheetName;

        // Create a new Reader of the type defined in $inputFileType
        $objReader = PHPExcel_IOFactory::createReader($inputFileType);

        // Advise the Reader of which WorkSheets we want to load
        $objReader->setLoadSheetsOnly($sheetName);

        // Advise the Reader that we only want to load cell data
        $objReader->setReadDataOnly(true);

        // Load $inputFileName to a PHPExcel Object
        $objPHPExcel = $objReader->load($inputFileName);

        return $objPHPExcel->getActiveSheet()->toArray(null,true,true,true);
    }
}