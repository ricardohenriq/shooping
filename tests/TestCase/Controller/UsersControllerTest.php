<?php
namespace App\Test\TestCase\Controller;

use App\Controller\UsersController;
use Cake\TestSuite\IntegrationTestCase;

/**
 * App\Controller\UsersController Test Case
 */
class UsersControllerTest extends IntegrationTestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.users',
        'app.user_types',
        'app.bookings',
        'app.stores'
    ];

    /**
     * Test index method
     *
     * @return void
     */
    // Método que deverá testar o método "index()" de "User",
    // mas como e quando este método será chamado?
    // A ferramenta seleciona o método a ser executado
    public function testIndex()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test view method
     *
     * @return void
     */
    // Método que deverá testar o método "view()" de "User",
    // mas como e quando este método será chamado?
    public function testView()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test add method
     *
     * @return void
     */
    // Método que deverá testar o método "add()" de "User",
    // mas como e quando este método será chamado?
    // A ferramenta seleciona o método a ser executado
    public function testAdd()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test edit method
     *
     * @return void
     */
    // Método que deverá testar o método "edit()" de "User",
    // mas como e quando este método será chamado?
    public function testEdit()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test delete method
     *
     * @return void
     */
    // Método que deverá testar o método "delete()" de "User",
    // mas como e quando este método será chamado?
    // A ferramenta seleciona o método a ser executado
    public function testDelete()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
