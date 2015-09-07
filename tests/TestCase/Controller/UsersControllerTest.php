<?php
namespace App\Test\TestCase\Controller;

use App\Controller\UsersController;
use Cake\Auth\DefaultPasswordHasher;
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
         * Verifica se a operação "add" realmente esta funcionando.
         */
        $data = [
            'email' => 'usuariocomum999999@gmail.com',
            'password' => 'usuariocomum999999senha',
            'username' => 'usuariocomum999999username',
            'user_type_id' => 900000
        ];

        $this->post(Router::url(
            [
                'controller' => 'users',
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
                'username' => 'usuariocomum999999username',
                'user_type_id' => 900000
            ]
        ];

        $users = TableRegistry::get('Users');
        $query = $users->find('all', [
                'fields' => ['Users.email', 'Users.username', 'Users.user_type_id'],
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
        /**
         * Array de dados de autenticação de usuário do Banco "test"
         */
        $testUser = [
            'Auth' => [
                'User' => [
                    'id' => 900000,
                    'username' => 'usuariocomum1username',
                    'password' => 'usuariocomum1senha'
                ]
            ]
        ];

        /**
         * Adiciona o login de usuário (usuário no Banco "Default")
         */
        $this->session($testUser);

        //-------------------------------------------------------------------------

        /**
         * Variaveis usadas nas consultas.
         */
        $id = 900000;
        $options = [
            'fields' => ['Users.email', 'Users.password',
                'Users.username', 'Users.user_type_id'],
            'conditions' => ['Users.id' => $id]
        ];

        //-------------------------------------------------------------------------

        /**
         * Verifica se a operação "edit" esta acessivel.
         */
        $this->get(Router::url(
            [
                'controller' => 'users',
                'action' => 'edit',
                $id
            ])
        );
        $this->assertResponseSuccess();

        //-------------------------------------------------------------------------

        /**
         * Verifica se a operação "edit" esta preenchendo o HTML adequadamente,
         * para isso é necessário usar um 'registro' que já esta no banco (e não
         * uma fixture).
         *
         * ESTE TESTE FOI REMOVIDO POIS A MESMA FUNCIONALIDADE DEVERÁ SER EXECUTADO
         * USANDO O SELENIUM IDE, PORÉM O MESMO FUNCIONA DESDE QUE O ACESSO SEJA
         * LIBERADO SEM LOGIN
         */
        //$HTMLPage = file_get_contents('http://localhost:8765/users/edit/1');
        //$this->assertContains('value="bill@outlook.com"', $HTMLPage);
        //$this->assertContains('selected="selected">common<', $HTMLPage);

        //-------------------------------------------------------------------------

        /**
         * Verifica se a entidade existe no Banco e armazena para comparação.
         */
        $users = TableRegistry::get('Users');
        $expected = $users->find('all', $options)->first()->toArray();
        $this->assertNotEmpty($expected);

        //-------------------------------------------------------------------------

        /**
         * Realiza a edição e checa se a mudança foi realizada.
         */
        $data = [
            'email' => 'USUARIOCOMUM1@gmail.com',
            'password' => 'USUARIOCOMUM1senha',
            'username' => 'USUARIOCOMUM1username',
            'user_type_id' => 900000
        ];

        $this->post(Router::url(
            [
                'controller' => 'users',
                'action' => 'edit',
                $id
            ]), $data);

        $edited = $users->find('all', $options)->first()->toArray();

        $this->assertNotEquals($expected, $edited);
    }

    /**
     * Test delete method
     *
     * @return void
     */
    public function testDelete()
    {
        /**
         * Array de dados de autenticação de usuário do Banco "test"
         */
        $testUser = [
            'Auth' => [
                'User' => [
                    'id' => 900000,
                    'username' => 'usuariocomum1username',
                    'password' => 'usuariocomum1senha'
                ]
            ]
        ];

        /**
         * Adiciona o login de usuário (usuário no Banco "Default")
         */
        $this->session($testUser);

        //-------------------------------------------------------------------------

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
         * Verifica se a operação "delete" realmente esta funcionando.
         */
        $this->post(Router::url(
            [
                'controller' => 'users',
                'action' => 'delete',
                $id
            ]));

        $query = $users->find('all', $options);

        $result = $query->hydrate(false)->toArray();
        $this->assertEmpty($result);
    }
}