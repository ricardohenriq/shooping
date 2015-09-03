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
        /**
         * Verifica se é possivel acessar a página.
         */
        $this->get(Router::url(
            ['controller' => 'users',
                'action' => 'add'
            ])
        );
        $this->assertResponseOk();

        //-------------------------------------------------------------------------

        /**
         * Insere um registro (Users) no Banco.
         */
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

        /**
         * Verifica se o registro (Users) foi inserido no Banco comparando-o
         * com uma expectativa.
         */
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
        //$this->markTestIncomplete('Not implemented yet.');
        $id = 900000;
        
    }

    /**
     * Test delete method
     *
     * @return void
     */
    public function testDelete()
    {
        /**
         * Variaveis usadas nas consultas.
         */
        $id = 900000;
        $options = [
            'fields' => ['Users.id', 'Users.email', 'Users.password',
                'Users.username', 'Users.user_type_id', 'Users.created',
                'Users.modified'],
            'conditions' => ['Users.id' => $id]
        ];

        //-------------------------------------------------------------------------

        /**
         * Verifica se a entidade existe no Banco.
         */
        $users = TableRegistry::get('Users');
        $query = $users->find('all', $options);

        $result = $query->hydrate(false)->toArray();
        $this->assertNotEmpty($result);

        //-------------------------------------------------------------------------

        /**
         * Verifica se a operação delete realmente esta funcionando.
         */
        $this->post('/users/delete/' . $id);

        $query = $users->find('all', $options);

        $result = $query->hydrate(false)->toArray();
        $this->assertEmpty($result);
    }
}
