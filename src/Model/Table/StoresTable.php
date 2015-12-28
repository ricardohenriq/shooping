<?php
namespace App\Model\Table;

use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Stores Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Users
 * @property \Cake\ORM\Association\HasMany $Products
 */
class StoresTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        $this->table('stores');
        $this->displayField('store_name');
        $this->primaryKey('id');
        $this->addBehavior('Timestamp');
        $this->belongsTo('Users', [
            'foreignKey' => 'user_id',
            'joinType' => 'INNER'
        ]);
        $this->hasMany('Products', [
            'foreignKey' => 'store_id'
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
            ->requirePresence('store_name', 'create')
            ->notEmpty('store_name');

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
        $rules->add($rules->existsIn(['user_id'], 'Users'));
        return $rules;
    }

    public function myStores($userID)
    {
        $setting = [
            'fields' => ['store_name', 'id', 'created', 'modified'],
            'conditions' => ['user_id' => $userID]
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }

    public function favoriteStores()
    {
        //ESTE MÉTODO DEVERÁ SER REFEITO QUANDO FOR CRIADA A
        //TABELA DE FAVORITOS, ATUALMENE ESTA SOMENTE "EMULANDO"
        //UM RESULTADO ESPERADO.

        $setting = [
            'fields' => ['store_name', 'id', 'created', 'modified']
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }
}
