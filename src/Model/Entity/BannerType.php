<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * BannerType Entity.
 */
class BannerType extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'type_name' => true,
        'banners' => true,
    ];
}
