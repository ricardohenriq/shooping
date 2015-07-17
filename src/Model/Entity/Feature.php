<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Feature Entity.
 */
class Feature extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'feature_name' => true,
    ];
}
