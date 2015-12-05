<?php
namespace App\Controller\Component;

use Burzum\FileStorage\Lib\StorageManager;
use Cake\Controller\Component;
use ImageTool;

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

    function uploadFiles($folder, $files){
        // create the folder if it does not exist
        if(!is_dir($folder)){
            mkdir($folder);
        }

        // list of permitted file types, this is only images but documents can be added
        $permitted = ['image/gif','image/jpeg','image/pjpeg','image/png'];

        // loop through and deal with the files
        foreach($files as $file){
            // replace spaces with underscores
            $filename = str_replace(' ', '_', $file['name']);
            // assume filetype is false
            $typeOK = false;
            // check filetype is ok
            foreach($permitted as $type){
                if($type == $file['type']){
                    $typeOK = true;
                    break;
                }
            }

            // if file type ok upload the file
            if($typeOK){
                // switch based on error code
                switch($file['error']){
                    case 0:
                        // check filename already exists
                        if(!file_exists($folder . DS . $filename)){
                            // create full filename
                            $url = $folder . DS . $filename;
                            // upload the file
                            $success = move_uploaded_file($file['tmp_name'], $url);
                        } else{
                            // create unique filename and upload file
                            ini_set('date.timezone', 'Europe/London');
                            $now = date('Y-m-d-His');
                            $url = $folder . DS . $now . $filename;
                            $success = move_uploaded_file($file['tmp_name'], $url);
                        }
                        // if upload was successful
                        if($success){
                            // save the url of the file
                            $result[]['url'] = $url;
                        } else{
                            $result['errors'][] = "Error uploaded $filename. Please try again.";
                        }
                        break;
                    case 3:
                        // an error occured
                        $result['errors'][] = "Error uploading $filename. Please try again.";
                        break;
                    default:
                        // an error occured
                        $result['errors'][] = "System error uploading $filename. Contact webmaster.";
                        break;
                }
            } elseif($file['error'] == 4){
                // no file was selected for upload
                $result['nofiles'][] = "No file Selected";
            } else{
                // unacceptable file type
                $result['errors'][] = "$filename cannot be uploaded. Acceptable file types: gif, jpg, png.";
            }
        }
        return $result;
    }

    function resizeImage($settings)
    {
        $status = ImageTool::resize([
            'input' => $settings['input'],
            'output' => $settings['output'],
            'width' => $settings['width'],
            'height' => $settings['height'],
            'mode' => $settings['mode']
        ]);
        return $status;
    }
}