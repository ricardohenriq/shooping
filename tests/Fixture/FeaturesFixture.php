<?php
namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * FeaturesFixture
 *
 */
class FeaturesFixture extends TestFixture
{

    /**
     * Fields
     *
     * @var array
     */
    // @codingStandardsIgnoreStart
    public $fields = [
        'id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'autoIncrement' => true, 'precision' => null],
        'intern_code' => ['type' => 'string', 'fixed' => true, 'length' => 6, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null],
        'feature_name' => ['type' => 'string', 'length' => 255, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'fixed' => null],
        'created' => ['type' => 'datetime', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        'modified' => ['type' => 'datetime', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        '_constraints' => [
            'primary' => ['type' => 'primary', 'columns' => ['id'], 'length' => []],
            'intern_code' => ['type' => 'unique', 'columns' => ['intern_code'], 'length' => []],
            'feature_name' => ['type' => 'unique', 'columns' => ['feature_name'], 'length' => []],
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
            'id' => 1,
            'intern_code' => 'Lore',
            'feature_name' => 'Lorem ipsum dolor sit amet',
            'created' => '2015-12-13 17:31:35',
            'modified' => '2015-12-13 17:31:35'
        ],
    ];
}
