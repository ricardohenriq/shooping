<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Booking Entity.
 */
class Booking extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'product_id' => true,
        'quantity' => true,
        'user_id' => true,
        'product' => true,
        'user' => true,
    ];
}
