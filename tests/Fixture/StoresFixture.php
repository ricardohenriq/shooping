<?php
namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * StoresFixture
 *
 */
class StoresFixture extends TestFixture
{

    /**
     * Fields
     *
     * @var array
     */
    // @codingStandardsIgnoreStart
    public $fields = [
        'id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'autoIncrement' => true, 'precision' => null],
        'store_name' => ['type' => 'string', 'length' => 255, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'fixed' => null],
        'user_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'created' => ['type' => 'datetime', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        'modified' => ['type' => 'datetime', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        '_indexes' => [
            'user_key' => ['type' => 'index', 'columns' => ['user_id'], 'length' => []],
        ],
        '_constraints' => [
            'primary' => ['type' => 'primary', 'columns' => ['id'], 'length' => []],
            'stores_ibfk_1' => ['type' => 'foreign', 'columns' => ['user_id'], 'references' => ['users', 'id'], 'update' => 'restrict', 'delete' => 'restrict', 'length' => []],
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
            'store_name' => 'Loja A',
            'user_id' => 900005,
            'created' => '2012-10-28 09:39:49',
            'modified' => '2013-10-28 09:39:49'
        ],
        [
            'id' => 900001,
            'store_name' => 'Loja B',
            'user_id' => 900006,
            'created' => '2012-10-28 09:39:49',
            'modified' => '2013-10-28 09:39:49'
        ],
        [
            'id' => 900002,
            'store_name' => 'Loja C',
            'user_id' => 900007,
            'created' => '2015-07-17 18:52:26',
            'modified' => '2015-07-17 18:52:26'
        ],
        [
            'id' => 900003,
            'store_name' => 'Loja D',
            'user_id' => 900007,
            'created' => '2015-07-17 18:52:26',
            'modified' => '2015-07-17 18:52:26'
        ]
    ];
}
