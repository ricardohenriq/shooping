<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\UsersTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

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
    // Carregando as fixtures que serão usados nos casos de teste,
    // neste caso todas as fixtures de todas as tabelas que estão
    // relacionadas a tabela users incluindo-a.
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
    // Método que inicializa os objetos necessários para realizar os teste e qualquer
    // outra operação que deve ser feita para realizar os testes como criar a tabela.
    public function setUp()
    {
        parent::setUp();
        // O que esta sendo feito aqui ? Não encontrei o uso de TableRegistry::exists na
        // na documentação.
        // Configurar a tabela de acordo com as regras definidas.
        $config = TableRegistry::exists('Users') ? [] : ['className' => 'App\Model\Table\UsersTable'];
        // O que esta sendo feito aqui ? Não encontrei na documentação a presença do segundo
        // parametro.
        // Cria um objeto/tabela 'Users' mediante a configuração (de tipos de campos) obtida acima.
        $this->Users = TableRegistry::get('Users', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    // É chamado depois de cada método de teste.
    // Deve ser usado para limpeza após a conclusão do teste como eliminar a tabela
    public function tearDown()
    {
        unset($this->Users);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    // Método que deverá testar o método "initialize()" de "UsersTable",
    // mas como e quando este método será chamado?
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    // Método que deverá testar o método "validationDefault()" de "UsersTable",
    // mas como e quando este método será chamado?
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test buildRules method
     *
     * @return void
     */
    // Método que deverá testar o método "buildRules()" de "UsersTable",
    // mas como e quando este método será chamado?
    public function testBuildRules()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
