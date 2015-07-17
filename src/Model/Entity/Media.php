<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Media Entity.
 */
class Media extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'media_type_id' => true,
        'path' => true,
        'media_type' => true,
    ];
}
