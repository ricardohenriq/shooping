<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * MediaType Entity.
 */
class MediaType extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    protected $_accessible = [
        'name_media_type' => true,
        'medias' => true,
    ];
}
