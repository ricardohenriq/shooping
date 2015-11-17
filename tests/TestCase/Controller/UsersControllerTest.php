<?php
namespace App\Test\TestCase\Controller;

use App\AppClasses\DataClasses\ResponseMessage;
use App\AppClasses\EnumClasses\CodeEnum;
use App\AppClasses\EnumClasses\NameEnum;
use App\AppClasses\EnumClasses\TypeMessageEnum;
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

    public function testAddSuccessNonExistentResponseJson()
    {
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

        $expected = new ResponseMessage();
        $expected->code = CodeEnum::USER_ADDED;
        $expected->name = NameEnum::USER_ADDED;
        $expected->type = TypeMessageEnum::SUCCESS;
        $expected = json_encode($expected);

        $this->assertEquals($expected, $this->_response->body());
    }

    public function testAddSuccessNonExistent()
    {
        $data = [
            'email' => 'usuariocomum888888@gmail.com',
            'password' => 'usuariocomum888888senha',
            'username' => 'usuariocomum888888username',
            'user_type_id' => 900000
        ];

        $this->post(Router::url(
            [
                'controller' => 'users',
                'action' => 'add'
            ]), $data);

        $expected = [
            [
                'email' => 'usuariocomum888888@gmail.com',
                'username' => 'usuariocomum888888username',
                'user_type_id' => 900000
            ]
        ];

        $settings = [
            'fields' => ['email', 'username', 'user_type_id'],
            'conditions' => ['email' => 'usuariocomum888888@gmail.com']
        ];
        $result  = TableRegistry::get('Users')->find('all', $settings)
            ->hydrate(false)->toArray();

        $this->assertEquals($expected, $result);
    }

    public function testEditSuccessResponseJson()
    {
        /**
         * Array de dados de autenticação de usuário do Banco "test"
         */
        $testUser = [
            'Auth' => [
                'User' => [
                    'id' => 900005,
                    'username' => 'usuariocomum6@gmail.com',
                    'password' => 'usuariocomum6senha'
                ]
            ]
        ];

        /**
         * Adiciona o login de usuário (usuário no Banco "Default")
         */
        $this->session($testUser);

        //-------------------------------------------------------------------------

        /**
         * Realiza a edição e checa se a mudança foi realizada.
         */
        $data = [
            'email' => 'USUARIOCOMUM6@gmail.com',
            'password' => 'USUARIOCOMUM6senha',
            'username' => 'USUARIOCOMUM6username',
            'user_type_id' => 900000
        ];

        $this->post(Router::url(
            [
                'controller' => 'users',
                'action' => 'edit',
                900005
            ]), $data);

        $expected = new ResponseMessage();
        $expected->code = CodeEnum::USER_EDITED;
        $expected->name = NameEnum::USER_EDITED;
        $expected->type = TypeMessageEnum::SUCCESS;
        $expected = json_encode($expected);

        $this->assertEquals($expected, $this->_response->body());
    }

    public function testEditSuccess()
    {
        /**
         * Array de dados de autenticação de usuário do Banco "test"
         */
        $testUser = [
            'Auth' => [
                'User' => [
                    'id' => 900005,
                    'username' => 'usuariocomum6@gmail.com',
                    'password' => 'usuariocomum6senha'
                ]
            ]
        ];

        /**
         * Adiciona o login de usuário (usuário no Banco "Default")
         */
        $this->session($testUser);

        /**
         * Realiza a edição e checa se a mudança foi realizada.
         */
        $data = [
            'email' => 'USUARIOCOMUM6@gmail.com',
            'password' => 'USUARIOCOMUM6senha',
            'username' => 'USUARIOCOMUM6username',
            'user_type_id' => 900000
        ];

        $this->post(Router::url(
            [
                'controller' => 'users',
                'action' => 'edit',
                900005
            ]), $data);

        $expected = [
            'email' => 'USUARIOCOMUM1@gmail.com',
            'username' => 'USUARIOCOMUM1username'
        ];

        $settings = [
            'fields' => ['email', 'password', 'username', 'user_type_id'],
            'conditions' => ['id' => 900000]
        ];
        $result = TableRegistry::get('Users')
            ->find('all', $settings)->first()->toArray();

        $this->assertNotEquals($expected, $result);
    }

    public function testDeleteSuccess()
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

        /**
         * Verifica se a operação "delete" realmente esta funcionando.
         */
        $this->post(Router::url(
            [
                'controller' => 'users',
                'action' => 'delete',
                900000
            ]));

        $settings = [
            'fields' => ['id', 'email', 'password',
                'username', 'user_type_id', 'created',
                'modified'],
            'conditions' => ['id' => 900000]
        ];
        $result = TableRegistry::get('Users')->find('all', $settings)
            ->hydrate(false)->toArray();

        $this->assertEmpty($result);
    }

    public function testDeleteSuccessResponseJson()
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
         * Verifica se a operação "delete" realmente esta funcionando.
         */
        $this->post(Router::url(
            [
                'controller' => 'users',
                'action' => 'delete',
                900000
            ]));

        $expected = new ResponseMessage();
        $expected->code = CodeEnum::USER_DELETED;
        $expected->name = NameEnum::USER_DELETED;
        $expected->type = TypeMessageEnum::SUCCESS;
        $expected = json_encode($expected);

        $this->assertEquals($expected, $this->_response->body());
    }
}