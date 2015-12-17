<?php

namespace App\Lib\Utils;

use Cake\ORM\TableRegistry;

class ModelUtils 
{
    public static function prepareProductsFeatures($formValues, $productId)
    {
        $productFeaturesArray = self::createProductsFeaturesArray($formValues);
        $productFeaturesEntities = self::createProductsFeaturesEntitiesArray(
            $productFeaturesArray, $productId
		);
        return $productFeaturesEntities;
    }

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

    public static function createProductsFeaturesEntitiesArray($productFeaturesArray, $productId)
    {
        $featuresEntities = [];

        foreach ($productFeaturesArray as $productFeature) {
            $productFeatureEntity = TableRegistry::get('ProductFeatures')->newEntity();
            $productFeatureEntity->product_id = $productId;
            $productFeatureEntity->feature_value = $productFeature['feature_value'];
            $productFeatureEntity->feature_intern_code = $productFeature['feature_intern_code'];
            $featuresEntities[] = $productFeatureEntity;
        }

        return $featuresEntities;
    }

    public static function prepareMediaThumb($productId, $thumbUrl)
    {
        $mediaEntity = TableRegistry::get('Medias')->newEntity();
        $mediaEntity->product_id = $productId;
        $mediaEntity->media_type_id = 3;
        $mediaEntity->path = str_replace(ROOT_PARENT, 'http://localhost/PROJETOS/', $thumbUrl);
        $mediaEntity->path = str_replace('\\', '/', $mediaEntity->path);;
        return $mediaEntity;
    }

    public static function prepareMedias($imagesUploaded, $productId)
    {
        //Faz com que todas as imagens sejam "Imagens Comuns"
        $imagesUploaded = self::addKeyValueToArray($imagesUploaded, 'media_type_id', 1);
        //Faz com que a imagem seja "Imagem Principal"
        $imagesUploaded[0]['media_type_id'] = 2;
        $imagesUploaded = self::replaceArrayValue($imagesUploaded, 'url', 'http://localhost/PROJETOS/',
            ROOT_PARENT . DS);
        $imagesUploaded = self::replaceArrayValue($imagesUploaded, 'url', '/', '\\');
        return self::createMediasEntitiesArray($imagesUploaded, $productId);
    }

    public static function addKeyValueToArray($array, $key, $value)
    {
        foreach ($array as &$element) {
            $element[$key] = $value;
        }

        return $array;
    }

    public static function replaceArrayValue($array, $key, $newString, $oldString)
    {
        foreach ($array as &$element) {
            $element[$key] =  str_replace($oldString, $newString, $element[$key]);
        }

        return $array;
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