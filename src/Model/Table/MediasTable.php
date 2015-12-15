<?php
namespace App\Model\Table;

use App\Model\Entity\Media;
use Cake\Core\Exception\Exception;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Medias Model
 *
 * @property \Cake\ORM\Association\BelongsTo $MediaTypes
 */
class MediasTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        $this->table('medias');
        $this->displayField('id');
        $this->primaryKey('id');
        $this->addBehavior('Timestamp');
        $this->belongsTo('MediaTypes', [
            'foreignKey' => 'media_type_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Products', [
            'foreignKey' => 'product_id',
            'joinType' => 'INNER'
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->add('id', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('id', 'create');
            
        $validator
            ->requirePresence('path', 'create')
            ->notEmpty('path');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        $rules->add($rules->existsIn(['media_type_id'], 'MediaTypes'));
        return $rules;
    }

    public function getProductImages($productId)
    {
        $setting = [
            'fields' => ['path'],
            'conditions' => ['product_id' => $productId, 'media_type_id' => 1]
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }

    public function getProductMainImage($productId)
    {
        $setting = [
            'fields' => ['path'],
            'conditions' => ['product_id' => $productId, 'media_type_id' => 2]
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->first();
    }

    public function setMediasEntities($medias)
    {
        try {
            foreach ($medias as $media) {
                $this->save($media);
            }
            return true;
        }catch (Exception $e){
            throw $e;
        }
    }

    public function setMediaEntity($media)
    {
        try {
                $this->save($media);
            return true;
        }catch (Exception $e){
            throw $e;
        }
    }
}
