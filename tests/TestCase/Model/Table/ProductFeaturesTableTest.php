<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ProductFeaturesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ProductFeaturesTable Test Case
 */
class ProductFeaturesTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.product_features',
        'app.features',
        'app.products',
        'app.stores',
        'app.users',
        'app.user_types',
        'app.bookings',
        'app.offers',
        'app.offer_banners',
        'app.medias',
        'app.media_types'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('ProductFeatures') ? [] : ['className' => 'App\Model\Table\ProductFeaturesTable'];
        $this->ProductFeatures = TableRegistry::get('ProductFeatures', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->ProductFeatures);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test buildRules method
     *
     * @return void
     */
    public function testBuildRules()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
