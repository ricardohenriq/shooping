<?php
namespace App\Test\TestCase\Controller;

use App\Controller\UsersController;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\IntegrationTestCase;
use Cake\Routing\Router;

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
    public function testIndex()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test view method
     *
     * @return void
     */
    public function testView()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test add method
     *
     * @return void
     */
    public function testAdd()
    {
        $this->get(Router::url(
            ['controller' => 'users',
                'action' => 'add'
            ])
        );
        $this->assertResponseOk();

        //-------------------------------------------------------------------------

        $data = [
            'email' => 'usuariocomum999999@gmail.com',
            'password' => 'usuariocomum999999senha',
            'username' => 'usuariocomum999999username',
            'user_type_id' => 900000
        ];

        $this->post(Router::url(
            ['controller' => 'users',
                'action' => 'add'
            ]), $data);
        $this->assertResponseSuccess();

        //-------------------------------------------------------------------------

        $expected = [
            [
                'email' => 'usuariocomum999999@gmail.com',
                'password' => 'usuariocomum999999senha',
                'username' => 'usuariocomum999999username',
                'user_type_id' => 900000
            ]
        ];

        $users = TableRegistry::get('Users');
        $query = $users->find('all', [
            'fields' => ['Users.email', 'Users.password', 'Users.username',
                'Users.user_type_id'],
            'conditions' => ['Users.email' => 'usuariocomum999999@gmail.com']
        ]);
        $result = $query->hydrate(false)->toArray();
        $this->assertEquals($expected, $result);
    }

    /**
     * Test edit method
     *
     * @return void
     */
    public function testEdit()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test delete method
     *
     * @return void
     */
    public function testDelete()
    {
        $id = 900000;
        $this->get('/users/delete/' . $id);

        $users = TableRegistry::get('Users');
        $query = $users->find('all', [
            'fields' => ['Users.id', 'Users.email', 'Users.password',
                'Users.username', 'Users.user_type_id', 'Users.created',
                'Users.modified'],
            'conditions' => ['Users.id' => $id]
        ]);

        $result = $query->hydrate(false)->toArray();
        //var_dump($result);
        $this->assertEmpty($result);
    }
}
