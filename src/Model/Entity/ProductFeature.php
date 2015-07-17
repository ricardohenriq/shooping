<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * ProductFeature Entity.
 */
class ProductFeature extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'feature_value' => true,
        'feature_id' => true,
        'product_id' => true,
        'feature' => true,
        'product' => true,
    ];
}
