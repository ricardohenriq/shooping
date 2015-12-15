<?php

namespace App\AppClasses\Utils;

use Cake\ORM\TableRegistry;

class ModelUtils {

    public static function createProductsFeaturesArray($formValues)
    {
        $featuresArray = [];

        foreach ($formValues as $key => $field) {
            if (stripos($key, 'FEA') === 0) {
                $featuresArray[] = ['feature_intern_code' => $key,
                    'feature_value' => $formValues[$key]];
            }
        }

        return $featuresArray;
    }

    public static function createProductsFeaturesEntitiesArray($featuresArray, $productId)
    {
        $featuresEntities = [];

        foreach ($featuresArray as $feature) {
            $productFeatureEntity = TableRegistry::get('ProductFeatures')->newEntity();
            $productFeatureEntity->product_id = $productId;
            $productFeatureEntity->feature_value = $feature['feature_value'];
            $productFeatureEntity->feature_intern_code = $feature['feature_intern_code'];
            $featuresEntities[] = $productFeatureEntity;
        }

        return $featuresEntities;
    }

    public static function createMediasEntitiesArray($mediasArray, $productId)
    {
        $mediasEntities = [];

        foreach ($mediasArray as $media) {
            $mediaEntity = TableRegistry::get('Medias')->newEntity();
            $mediaEntity->product_id = $productId;
            $mediaEntity->media_type_id = $media['media_type_id'];
            $mediaEntity->path = $media['url'];
            $mediasEntities[] = $mediaEntity;
        }

        return $mediasEntities;
    }
}