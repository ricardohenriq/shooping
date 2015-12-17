<?php

namespace App\Lib\Utils;

class UploadUtils 
{
    public static function getOutputThumbUrl($mainImage, $productId)
    {
        return str_replace(PRODUCTS_IMAGES_FOLDER . $productId,
            PRODUCTS_THUMB_FOLDER, $mainImage);
    }
}