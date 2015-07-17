<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Promotion Entity.
 */
class Promotion extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'promotion_name' => true,
        'duration' => true,
        'promotion_products' => true,
    ];
}
