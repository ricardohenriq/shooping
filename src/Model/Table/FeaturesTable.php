<?php
namespace App\Model\Table;

use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Features Model
 *
 */
class FeaturesTable extends Table
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

        $this->table('features');
        $this->displayField('id');
        //ESTA NÃO É A CHAVE PRIMARIA MAS É O CAMPO "UNIQUE"
        //QUE A CHAVE ESTRANGEIRA REFERENCIA
        $this->primaryKey('intern_code');
        $this->addBehavior('Timestamp');
        $this->hasMany('ProductFeatures', [
            'foreignKey' => 'feature_intern_code'
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
            ->requirePresence('intern_code', 'create')
            ->notEmpty('intern_code')
            ->add('intern_code', 'unique', ['rule' => 'validateUnique', 'provider' => 'table']);

        $validator
            ->requirePresence('feature_name', 'create')
            ->notEmpty('feature_name')
            ->add('feature_name', 'unique', ['rule' => 'validateUnique', 'provider' => 'table']);

        return $validator;
    }
}
