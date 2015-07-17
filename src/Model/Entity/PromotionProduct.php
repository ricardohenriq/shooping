<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * PromotionProduct Entity.
 */
class PromotionProduct extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'product_id' => true,
        'promotion_id' => true,
        'promotion_price' => true,
        'promotion_quantity' => true,
        'product' => true,
        'promotion' => true,
    ];
}
