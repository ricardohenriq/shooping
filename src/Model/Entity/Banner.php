<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Banner Entity.
 */
class Banner extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'banner_type_id' => true,
        'user_id' => true,
        'banner_description' => true,
        'path_banner' => true,
        'url_redirect' => true,
        'banner_type' => true,
        'user' => true,
    ];
}
