<?php
namespace App\Model\Table;

use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Banners Model
 *
 * @property \Cake\ORM\Association\BelongsTo $BannerTypes
 * @property \Cake\ORM\Association\BelongsTo $Users
 */
class BannersTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        $this->table('banners');
        $this->displayField('id');
        $this->primaryKey('id');
        $this->addBehavior('Timestamp');
        $this->belongsTo('BannerTypes', [
            'foreignKey' => 'banner_type_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Users', [
            'foreignKey' => 'user_id',
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
            ->requirePresence('banner_description', 'create')
            ->notEmpty('banner_description');
            
        $validator
            ->requirePresence('path_banner', 'create')
            ->notEmpty('path_banner');
            
        $validator
            ->requirePresence('url_redirect', 'create')
            ->notEmpty('url_redirect');

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
        $rules->add($rules->existsIn(['banner_type_id'], 'BannerTypes'));
        $rules->add($rules->existsIn(['user_id'], 'Users'));
        return $rules;
    }

    public function isOwnedBy($bannerId, $userId)
    {
        return $this->exists(['id' => $bannerId, 'user_id' => $userId]);
    }

    public function full()
    {
        $setting = [
            'fields' => ['id', 'banner_description', 'path_banner', 'url_redirect'],
            'conditions' => ['banner_type_id' => 2],
            'limit' => 1
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }

    public function small()
    {
        $setting = [
            'fields' => ['id', 'banner_description', 'path_banner', 'url_redirect'],
            'conditions' => ['banner_type_id' => 1],
            'limit' => 3
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }

    public function myFull($storeId){
        $setting = [
            'fields' => ['id', 'banner_description', 'path_banner', 'url_redirect'],
            'conditions' => ['banner_type_id' => 2, 'user_id' => $storeId],
            'limit' => 3
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }

    public function mySmall($storeId){
        $setting = [
            'fields' => ['id', 'banner_description', 'path_banner', 'url_redirect'],
            'conditions' => ['banner_type_id' => 1, 'user_id' => $storeId],
            'limit' => 3
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }

    public function getBanner($id = null)
    {
        $settings = [
            'fields' => ['id', 'path_banner', 'banner_description', 'banner_type_id',
                'url_redirect', 'created', 'modified'],
            'conditions' => ['id' => $id]
        ];
        return $this
            ->find('all', $settings)->hydrate(false)->first();
    }
}