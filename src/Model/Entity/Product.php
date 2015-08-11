<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Product Entity.
 */
class Product extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'product_name' => true,
        'store_id' => true,
        'quantity' => true,
        'description' => true,
        'price' => true,
        'status' => true,
        'store' => true,
        'bookings' => true,
        'product_features' => true
    ];
}
