<?php
namespace App\Model\Table;

use Cake\Core\Exception\Exception;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * ProductFeatures Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Products
 */
class ProductFeaturesTable extends Table
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

        $this->table('product_features');
        $this->displayField('id');
        $this->primaryKey('id');
        $this->addBehavior('Timestamp');
        $this->belongsTo('Products', [
            'foreignKey' => 'product_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Features', [
            'foreignKey' => 'feature_intern_code',
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
            ->requirePresence('feature_value', 'create')
            ->notEmpty('feature_value');

        $validator
            ->requirePresence('feature_intern_code', 'create')
            ->notEmpty('feature_intern_code');

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

    public function setProductFeaturesEntities($productFeatures)
    {
        try {
            foreach ($productFeatures as $productFeature) {
                $this->save($productFeature);
            }
            return true;
        }catch (Exception $e){
            throw $e;
        }
    }
}
