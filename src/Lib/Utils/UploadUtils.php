<?php

namespace App\Lib\Utils;

use ImageTool;

class UploadUtils
{
    public static function getOutputThumbUrl($mainImage, $productId)
    {
        return str_replace(PRODUCTS_IMAGES_FOLDER . $productId,
            PRODUCTS_THUMB_FOLDER, $mainImage);
    }

    public static function uploadFiles($folder, $files){
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
                        // create unique filename and upload file
                        ini_set('date.timezone', 'Europe/London');
                        $now = date('Y-m-d-His');
                        $url = $folder . DS . $now . $filename;
                        $success = move_uploaded_file($file['tmp_name'], $url);
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

    public static function resizeImage($settings)
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