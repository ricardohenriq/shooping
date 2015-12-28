<?php
namespace App\Model\Table;

use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Promotions Model
 *
 * @property \Cake\ORM\Association\HasMany $PromotionProducts
 */
class PromotionsTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        $this->table('promotions');
        $this->displayField('id');
        $this->primaryKey('id');
        $this->addBehavior('Timestamp');
        $this->hasMany('PromotionProducts', [
            'foreignKey' => 'promotion_id'
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
            ->requirePresence('promotion_name', 'create')
            ->notEmpty('promotion_name');
            
        $validator
            ->add('duration', 'valid', ['rule' => 'numeric'])
            ->requirePresence('duration', 'create')
            ->notEmpty('duration');

        return $validator;
    }

    public function isOwnedBy($promotionId, $userId)
    {
        return $this->exists(['id' => $promotionId, 'user_id' => $userId]);
    }
}
