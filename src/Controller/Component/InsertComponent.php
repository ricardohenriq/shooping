<?php
namespace App\Controller\Component;

use Cake\Controller\Component;
use Cake\ORM\TableRegistry;

class InsertComponent extends Component
{
    public function insertMedia($mediaTypeId, $productId, $path)
    {
        $media = TableRegistry::get('Medias')->newEntity();
        $media->media_type_id = $mediaTypeId;
        $media->product_id = $productId;
        $media->path = $path;

        if(TableRegistry::get('Medias')->save($media)){
            return true;
        }
        else{
            return false;
        }
    }
}