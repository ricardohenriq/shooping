<?php
namespace App\Model\Table;

use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Offers Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Products
 * @property \Cake\ORM\Association\HasMany $OfferBanners
 */
class OffersTable extends Table
{
    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->table('offers');
        $this->displayField('id');
        $this->primaryKey('id');
        $this->addBehavior('Timestamp');
        $this->belongsTo('Products', [
            'foreignKey' => 'product_id',
            'joinType' => 'INNER'
        ]);
        $this->hasMany('OfferBanners', [
            'foreignKey' => 'offer_id'
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
            ->requirePresence('name', 'create')
            ->notEmpty('name');

        $validator
            ->requirePresence('description', 'create')
            ->notEmpty('description');

        $validator
            ->add('date_start', 'valid', ['rule' => 'datetime'])
            ->requirePresence('date_start', 'create')
            ->notEmpty('date_start');

        $validator
            ->add('date_end', 'valid', ['rule' => 'datetime'])
            ->requirePresence('date_end', 'create')
            ->notEmpty('date_end');

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
        $rules->add($rules->existsIn(['product_id'], 'Products'));
        return $rules;
    }

    public function offersRecursive(){
        return $this
            ->find()
            ->select(['id', 'product_id', 'date_end', 'name', 'description'])
            ->contain([
                'Products' => function($q) {
                    //return $q->autoFields(true);
                    return $q->select(['id', 'product_name', 'price', 'old_price'])
                        ->contain([
                            'Medias' => function($q){
                                return $q->select(['product_id', 'path'])
                                    ->where(['media_type_id' => 3]);
                            }
                        ]);
                },
                'OfferBanners' => function($q) {
                    //return $q->autoFields(true);
                    return $q->select(['path', 'offer_id']);
                }
            ])->hydrate(false)->toArray();
    }

    public function getQuantityActiveOffers($userId)
    {
        //Após a remodelagem do banco passeremos o status da "Offer"
        //AINDA NÃO IMPLEMENTADO
        /*$setting = [
            //'conditions' => ['user_id' => $userId]
        ];
        return $this
            ->find('all', $setting)->count();*/
        return 'AINDA NÃO IMPLEMENTADO';
    }

    public function getQuantityPausedOffers($userId)
    {
        //Após a remodelagem do banco passeremos o status da "Offer"
        //AINDA NÃO IMPLEMENTADO
        /*$setting = [
            //'conditions' => ['user_id' => $userId]
        ];
        return $this
            ->find('all', $setting)->count();*/

        return 'AINDA NÃO IMPLEMENTADO';
    }

    public function getQuantityEndedOffers($userId)
    {
        //Após a remodelagem do banco passeremos o status da "Offer"
        //AINDA NÃO IMPLEMENTADO
        /*$setting = [
            //'conditions' => ['user_id' => $userId]
        ];
        return $this
            ->find('all', $setting)->count();*/
        return 'AINDA NÃO IMPLEMENTADO';
    }

    public function getOffers($storeId)
    {
        //AINDA NÃO IMPLEMENTADO
        $setting = [
            'fields' => ['id', 'product_id', 'name', 'description', 'date_start', 'date_end']
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }
}
