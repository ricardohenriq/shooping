<?php
namespace App\Model\Table;

use App\Model\Entity\User;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Users Model
 *
 * @property \Cake\ORM\Association\BelongsTo $UserTypes
 * @property \Cake\ORM\Association\HasMany $Bookings
 * @property \Cake\ORM\Association\HasMany $Stores
 */
class UsersTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        $this->table('users'); // Expecifica nome da tabela (Opcional pois sigo as convenções)
        $this->displayField('id'); // displayField faz, na teoria, $user imprimir o campo id,
        // ao invés do objeto inteiro.
        $this->primaryKey('id'); // Expecifica a chave primaria da tabela
        $this->addBehavior('Timestamp'); // Adiciono um "Behavior" a tabela ("Timestamp" é nativo)
        // Definição de relacionamento entre objetos
        // Um "UserTypes" (Tabela user_types) tem vários "Users" (Tabela users). Many to One
        $this->belongsTo('UserTypes', [
            'foreignKey' => 'user_type_id'
        ]);
        // Um "Users" (Tabela users) tem vários "Bookings" (Tabela bookings). One to Many
        $this->hasMany('Bookings', [
            'foreignKey' => 'user_id'
        ]);
        // Um "Users" (Tabela users) tem vários "Stores" (Tabela stores). One to Many
        $this->hasMany('Stores', [
            'foreignKey' => 'user_id'
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    // Cria o validador que será usado para validar os dados antes
    // de serem inseridos no banco de dados.
    public function validationDefault(Validator $validator)
    {
        $validator
            // Adciona a coluna "id" para checagem, adiciona uma regra, regra de que o
            // valor do "id" deve ser Númerico.
            // QUAL O SIGNIFICADO DESTE 'valid' ?
            ->add('id', 'valid', ['rule' => 'numeric'])
            // Seta que o "id" ao é obrigatório ao validar uma operação de criação.
            ->allowEmpty('id', 'create');
            // PORQUE ESTA VALIDAÇÃO NÃO POSSUI O MÉTODO "requirePresence" ?
            // Tem a ver com o "id" ser Chave Primaria ?
            // PORQUE O "id" não é notEmpty ?

        $validator
            // Adciona a coluna "email" para checagem, adiciona uma regra, regra de que o
            // valor do "id" deve ser um Email.
            // QUAL O SIGNIFICADO DESTE 'valid' ?
            ->add('email', 'valid', ['rule' => 'email'])
            // Seta que a presença do campo é obrigatório ao validar uma operação de criação.
            // criação == inserção no banco.
            // Define se um campo é requerido para estar presente no array de dados.
            ->requirePresence('email', 'create')
            // Seta que a qualquer momento a coluna "email" não pode ser vazio
            ->notEmpty('email');
            // requirePresence() e notEmpty() não são redundates ?

        $validator
            // Seta que a presença do campo é obrigatório ao validar uma operação de criação.
            // criação == inserção no banco.
            // Define se um campo é requerido para estar presente no array de dados.
            ->requirePresence('password', 'create')
            // Seta que a qualquer momento a coluna "password" não pode ser vazio
            ->notEmpty('password');
            // requirePresence() e notEmpty() não são redundates ?

        $validator
            // Seta que a presença do campo é obrigatório ao validar uma operação de criação.
            // criação == inserção no banco.
            // Define se um campo é requerido para estar presente no array de dados.
            ->requirePresence('username', 'create')
            // Seta que a qualquer momento a coluna "username" não pode ser vazio
            ->notEmpty('username');
            // requirePresence() e notEmpty() não são redundates ?

        return $validator;

        // PORQUE NÃO HÁ VALIDAÇÃO PARA A COLUNA "user_type_id" ? Tem a ver com
        // esta coluna ser chave estrangeira ?
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    // Qual a função deste método? não é similar à função validationDefault?
    public function buildRules(RulesChecker $rules)
    {
        $rules->add($rules->isUnique(['email'])); // Define a coluna / propriedade "email" unico.
        $rules->add($rules->isUnique(['username'])); // Porque unico ? Não defini na tabela como unico. Por inferencia
        $rules->add($rules->existsIn(['user_type_id'], 'UserTypes')); // Explicita que a coluna "user_type_id"
        // é uma chave estrangeira para a tabela "user_types".
        return $rules;

        // PORQUE NÃO HÁ VALIDAÇÃO PARA OS CAMPOS "password" e "id" ?
        //A validação de password é especial. Não é necessário escrever uma validação custom para password.
    }
}
