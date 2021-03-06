<?php
namespace App\Model\Table;

use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * SubCategories Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Categories
 */
class SubCategoriesTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        $this->table('sub_categories');
        $this->displayField('sub_category_name');
        $this->primaryKey('id');
        $this->addBehavior('Timestamp');
        $this->belongsTo('Categories', [
            'foreignKey' => 'category_id',
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
            ->requirePresence('sub_category_name', 'create')
            ->notEmpty('sub_category_name');

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
        $rules->add($rules->existsIn(['category_id'], 'Categories'));
        return $rules;
    }

    public function getAllSubCategories()
    {
        $settings = [
            'fields' => ['id', 'sub_category_name', 'category_id']
        ];
        return $this
            ->find('all', $settings)->hydrate(false)->toArray();
    }

    public function listAllSubCategories()
    {
        return $this
            ->find('list')->hydrate(false)->toArray();
    }

    public function getFavoriteSubcategories($userId)
    {
        //ESTE MÉTODO DEVERÁ SER REFEITO QUANDO FOR CRIADA A
        //TABELA DE FAVORITOS, ATUALMENE ESTA SOMENTE "EMULANDO"
        //UM RESULTADO ESPERADO.
        $setting = [
            'fields' => ['id', 'sub_category_name', 'created', 'modified']
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }
}
