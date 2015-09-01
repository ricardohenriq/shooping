<?php
namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * UsersFixture
 *
 */
class UsersFixture extends TestFixture
{
    //Importando informações da tabela (ao invés de declarar o $fields)
    //public $import = ['table' => 'users'];

    /**
     * Fields
     *
     * @var array
     */
    // @codingStandardsIgnoreStart
    public $fields = [
        //'id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'autoIncrement' => true, 'precision' => null],
        'id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'autoIncrement' => false, 'precision' => null],
        'email' => ['type' => 'string', 'length' => 255, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'fixed' => null],
        'password' => ['type' => 'string', 'length' => 255, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'fixed' => null],
        'username' => ['type' => 'string', 'length' => 255, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'fixed' => null],
        'user_type_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'created' => ['type' => 'datetime', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        'modified' => ['type' => 'datetime', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        '_indexes' => [
            'user_type_key' => ['type' => 'index', 'columns' => ['user_type_id'], 'length' => []],
        ],
        '_constraints' => [
            'primary' => ['type' => 'primary', 'columns' => ['id'], 'length' => []],
            'users_ibfk_1' => ['type' => 'foreign', 'columns' => ['user_type_id'], 'references' => ['user_types', 'id'], 'update' => 'restrict', 'delete' => 'restrict', 'length' => []],
        ],
        '_options' => [
            'engine' => 'InnoDB',
            'collation' => 'utf8_general_ci'
        ],
    ];
    // @codingStandardsIgnoreEnd

    /**
     * Records
     *
     * @var array
     */
    public $records = [
        [
            'id' => 900000,
            'email' => 'usuariocomum1@gmail.com',
            'password' => 'usuariocomum1senha',
            'username' => 'usuariocomum1username',
            'user_type_id' => 900000,
            'created' => '2015-07-17 18:46:47',
            'modified' => '2015-07-17 18:46:47'
        ],
        [
            'id' => 900001,
            'email' => 'usuariocomum2@gmail.com',
            'password' => 'usuariocomum2senha',
            'username' => 'usuariocomum2username',
            'user_type_id' => 900000,
            'created' => '2014-07-17 18:46:47',
            'modified' => '2015-07-17 18:46:47'
        ],
        [
            'id' => 900002,
            'email' => 'usuariocomum3@gmail.com',
            'password' => 'usuariocomum3senha',
            'username' => 'usuariocomum3username',
            'user_type_id' => 900000,
            'created' => '2013-07-17 18:46:47',
            'modified' => '2015-07-17 18:46:47'
        ],
        [
            'id' => 900003,
            'email' => 'usuariocomum4@gmail.com',
            'password' => 'usuariocomum4senha',
            'username' => 'usuariocomum4username',
            'user_type_id' => 900000,
            'created' => '2013-07-17 18:46:47',
            'modified' => '2015-07-17 18:46:47'
        ],
        [
            'id' => 900004,
            'email' => 'usuariocomum5@gmail.com',
            'password' => 'usuariocomum5senha',
            'username' => 'usuariocomum5username',
            'user_type_id' => 900000,
            'created' => '2014-07-17 18:46:47',
            'modified' => '2015-07-17 18:46:47'
        ],
        [
            'id' => 900005,
            'email' => 'usuariocomum6@gmail.com',
            'password' => 'usuariocomum6senha',
            'username' => 'usuariocomum6username',
            'user_type_id' => 900000,
            'created' => '2013-07-17 18:46:47',
            'modified' => '2015-07-17 18:46:47'
        ],
        [
            'id' => 900006,
            'email' => 'usuariolojista1@gmail.com',
            'password' => 'usuariolojista1senha',
            'username' => 'usuariolojista1username',
            'user_type_id' => 900001,
            'created' => '2013-07-17 18:46:47',
            'modified' => '2015-07-17 18:46:47'
        ],
        [
            'id' => 900007,
            'email' => 'usuariolojista2@gmail.com',
            'password' => 'usuariolojista2senha',
            'username' => 'usuariolojista2username',
            'user_type_id' => 900001,
            'created' => '2013-07-17 18:46:47',
            'modified' => '2015-07-17 18:46:47'
        ],
        [
            'id' => 900008,
            'email' => 'usuariolojista3@gmail.com',
            'password' => 'usuariolojista3senha',
            'username' => 'usuariolojista3username',
            'user_type_id' => 900001,
            'created' => '2013-07-17 18:46:47',
            'modified' => '2015-07-17 18:46:47'
        ],
        [
            'id' => 900009,
            'email' => 'usuarioadmin1@gmail.com',
            'password' => 'usuarioadmin1senha',
            'username' => 'usuarioadmin1username',
            'user_type_id' => 900002,
            'created' => '2013-07-17 18:46:47',
            'modified' => '2015-07-17 18:46:47'
        ],
        [
            'id' => 900010,
            'email' => 'usuarioadmin2@gmail.com',
            'password' => 'usuarioadmin2senha',
            'username' => 'usuarioadmin2username',
            'user_type_id' => 900002,
            'created' => '2013-07-17 18:46:47',
            'modified' => '2015-07-17 18:46:47'
        ]
    ];
}
