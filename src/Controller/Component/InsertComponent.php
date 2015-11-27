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

    public function insertMassEntities($entities, $entityName)
    {
        foreach($entities as $entity){
            TableRegistry::get($entityName)->save($entity);
        }
    }

    public function createMassFeaturesEntities($featuresArray, $productID)
    {
        $featuresEntities = [];

        foreach($featuresArray as $feature){
            $featureEntity = TableRegistry::get('ProductFeatures')->newEntity();
            $featureEntity->product_id = $productID;
            $featureEntity->feature_value = $feature['feature_value'];
            $featureEntity->feature_intern_code = $feature['feature_intern_code'];
            $featuresEntities[] = $featureEntity;
        }

        return $featuresEntities;
    }

    public function getFeatuesArray($formValues)
    {
        $featuresArray = [];

        foreach($formValues as $key => $field){
            if(stripos($key, 'FEA') === 0){
                $featuresArray[] = ['feature_intern_code' => $key,
                    'feature_value' => $formValues[$key]];
            }
        }

        return $featuresArray;
    }
}