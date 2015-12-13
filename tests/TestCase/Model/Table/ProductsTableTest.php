<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ProductsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ProductsTable Test Case
 */
class ProductsTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.products',
        'app.stores',
        'app.users',
        'app.user_types',
        'app.bookings',
        'app.product_features',
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
        $config = TableRegistry::exists('Products') ? [] : ['className' => 'App\Model\Table\ProductsTable'];
        $this->Products = TableRegistry::get('Products', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Products);

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

    /**
     * Test afterSave method
     *
     * @return void
     */
    public function testAfterSave()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test uploadFiles method
     *
     * @return void
     */
    public function testUploadFiles()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test resizeImage method
     *
     * @return void
     */
    public function testResizeImage()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test insertMassEntities method
     *
     * @return void
     */
    public function testInsertMassEntities()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test createMassFeaturesEntities method
     *
     * @return void
     */
    public function testCreateMassFeaturesEntities()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test getFeatuesArray method
     *
     * @return void
     */
    public function testGetFeatuesArray()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test createMassMediasEntities method
     *
     * @return void
     */
    public function testCreateMassMediasEntities()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test createMediaEntity method
     *
     * @return void
     */
    public function testCreateMediaEntity()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test addKeyValueToArray method
     *
     * @return void
     */
    public function testAddKeyValueToArray()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test replaceArrayValue method
     *
     * @return void
     */
    public function testReplaceArrayValue()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test getProductTrendByColumn method
     *
     * @return void
     */
    public function testGetProductTrendByColumn()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test getProductByStore method
     *
     * @return void
     */
    public function testGetProductByStore()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test getFavoriteProducts method
     *
     * @return void
     */
    public function testGetFavoriteProducts()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test getProductRecursive method
     *
     * @return void
     */
    public function testGetProductRecursive()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
