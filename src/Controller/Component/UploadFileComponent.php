<?php
namespace App\Controller\Component;

use Burzum\FileStorage\Lib\StorageManager;
use Cake\Controller\Component;

class UploadFileComponent extends Component
{
    public function saveFileLFS($stringSeparator, $storeName, $productName)
    {
        $key = $storeName . $stringSeparator . $productName . $stringSeparator .
            $this->request->data['Media']['file']['name'];
        if(StorageManager::adapter('Local')->write($key,
            file_get_contents($this->request->data['Media']['file']['tmp_name']))){
            return true;
        }else
        {
            return false;
        }
    }
}