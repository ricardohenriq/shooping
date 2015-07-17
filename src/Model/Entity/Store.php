<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Store Entity.
 */
class Store extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'store_name' => true,
        'user_id' => true,
        'user' => true,
        'products' => true,
    ];
}
