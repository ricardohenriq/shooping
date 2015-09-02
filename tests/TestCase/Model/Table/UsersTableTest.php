<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\UsersTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;
use Cake\I18n\Time;

/**
 * App\Model\Table\UsersTable Test Case
 */
class UsersTableTest extends TestCase
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
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        //$config = TableRegistry::exists('Users') ? [] : ['className' => 'App\Model\Table\UsersTable'];
        //$this->Users = TableRegistry::get('Users', $config);
        $this->Users = TableRegistry::get('Users');
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Users);
        parent::tearDown();
        TableRegistry::clear();
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

    public function testFindUser(){
        $query = $this->Users->find('user', [
            'fields' => ['Users.id', 'Users.email', 'Users.password',
                'Users.username', 'Users.user_type_id'],
            'conditions' => ['Users.id' => 900000]
        ]);
        $this->assertInstanceOf('Cake\ORM\Query', $query);
        $result = $query->hydrate(false)->toArray();

        $expected = [
            [
                'id' => 900000,
                'email' => 'usuariocomum1@gmail.com',
                'password' => 'usuariocomum1senha',
                'username' => 'usuariocomum1username',
                'user_type_id' => 900000
            ]
        ];

        $this->assertEquals($expected, $result);

        //-------------------------------------------------------------------------

        $query = $this->Users->find('user', [
            'fields' => ['Users.id', 'Users.email', 'Users.password',
                'Users.username', 'Users.user_type_id', 'Users.created',
                'Users.modified'],
            'conditions' => ['Users.id' => 900001]
        ]);
        $this->assertInstanceOf('Cake\ORM\Query', $query);
        $result = $query->hydrate(false)->toArray();

        $expected = [
            [
                'id' => 900001,
                'email' => 'usuariocomum2@gmail.com',
                'password' => 'usuariocomum2senha',
                'username' => 'usuariocomum2username',
                'user_type_id' => 900000,
                'created' => new Time('2014-07-17 18:46:47'),
                'modified' => new Time('2015-07-17 18:46:47')
            ]
        ];

        $this->assertEquals($expected, $result);

        //-------------------------------------------------------------------------

        $query = $this->Users->find('user', [
            'fields' => ['Users.id'],
            'conditions' => ['Users.id' => 1]
        ]);
        $this->assertInstanceOf('Cake\ORM\Query', $query);
        $result = $query->hydrate(false)->toArray();

        $expected = [
            [
                'id' => 1
            ]
        ];

        $this->assertEquals($expected, $result);
    }

    /*public function testSendingEmails()
    {
        //Indica que quer criar um mock do método 'send' do objeto 'EmailVerification'.
        $model = $this->getMockForModel('EmailVerification', ['send']);
        //Indica que este método 'mockado' será executado somente uma vez.
        $model->expects($this->once())
            ->method('send')
            //Indica que o método send irá retornar 'true' quando chamado
            ->will($this->returnValue(true));
        //Executa o método que REALMENTE deverá ser testado (este método faz chamada ao
        //método 'mockado''send' que por alguma razão é mas vantajoso 'falsificar' seu
        //comportamento do que deixar ele executar seu comportamento abtual)
        $model->verifyEmail('test@example.com');
    }*/
}