<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * ProductMedia Entity.
 */
class ProductMedia extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'product_id' => true,
        'media_id' => true,
        'product' => true,
        'media' => true,
    ];
}
