<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\PromotionProductsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\PromotionProductsTable Test Case
 */
class PromotionProductsTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.promotion_products',
        'app.products',
        'app.stores',
        'app.users',
        'app.user_types',
        'app.bookings',
        'app.product_features',
        'app.features',
        'app.product_medias',
        'app.medias',
        'app.media_types',
        'app.promotions'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('PromotionProducts') ? [] : ['className' => 'App\Model\Table\PromotionProductsTable'];
        $this->PromotionProducts = TableRegistry::get('PromotionProducts', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->PromotionProducts);

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
