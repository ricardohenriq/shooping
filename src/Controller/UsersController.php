<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Users Controller
 *
 * @property \App\Model\Table\UsersTable $Users
 */
class UsersController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        // Cria uma consulta paginada de entidades "User" (Tabela 'users'). Esta paginação
        // esta limitada a 10 resultados e irá trazer o conteudo relacionado 'UserTypes'.
        $this->paginate = [
            'limit' => 10,
            'contain' => ['UserTypes']
        ];
        // Executa a consulta paginada sobre os usuarios (Tabela 'users').
        $this->set('users', $this->paginate($this->Users));
        // CARECE EXPLICAÇÃO
        $this->set('_serialize', ['users']);
    }

    /**
     * View method
     *
     * @param string|null $id User id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        // Recupera a Entidade "User" (Linha da tabela "users") pelo "id"
        // que é a Primary Key e o conteudo relacionado (user_types, bookings e stores)
        // do usuário.
        $user = $this->Users->get($id, [
            'contain' => ['UserTypes', 'Bookings', 'Stores']
        ]);
        // Atribui a variavel da view 'user' o valor da variavel (entidade) $user
        $this->set('user', $user);
        // CARECE EXPLICAÇÃO
        $this->set('_serialize', ['user']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        // Cria uma nova entidade vazia.
        $user = $this->Users->newEntity();
        // Verifica se o request utiliza o seguinte método: 'post'
        if ($this->request->is('post')) {
            // Salva os dados alterados diretamente na Entidade existente (somente os dados
            // alterados serão salvos)
            $user = $this->Users->patchEntity($user, $this->request->data);
            // Salva as alterações da Entidade no Banco de dados
            if ($this->Users->save($user)) {
                // Usa src/Template/Element/Flash/success.ctp com a mensagem passada.
                // PORQUE O '__'?
                $this->Flash->success(__('The user has been saved.'));
                // Redireciona para o metodo "index" deste controller, esse redirecionamento
                // deve ser feito na forma de retorno.
                return $this->redirect(['action' => 'index']);
            } else {
                // Usa src/Template/Element/Flash/error.ctp com a mensagem passada
                // PORQUE O '__'?
                $this->Flash->error(__('The user could not be saved. Please, try again.'));
            }
        }
        // PORQUE AO FINAL DO MÉTODO ?
        // Retorna todos os Tipos (UserTypes) presentes na tabela "user_types", limitado a 200
        $userTypes = $this->Users->UserTypes->find('list', ['limit' => 200]);
        // Estou concatenando duas variaveis (uma entidade e um array) em um array
        // usando a função standart do php "compact", e estou enviando este array para
        // a view, as variaveis da view serão substituidas: "user" (pela entidade $user) e userTypes
        // (pelo array $userTypes).
        $this->set(compact('user', 'userTypes'));
        // CARECE EXPLICAÇÃO
        $this->set('_serialize', ['user']);
    }

    /**
     * Edit method
     *
     * @param string|null $id User id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        // Recupera a Entidade "User" (Linha da tabela "users") pelo "id"
        // que é a Primary Key e o conteudo relacionado (neste caso nada, vazio)
        // tem o mesmo resultado que: $user = $this->Users->get($id);
        $user = $this->Users->get($id, [
            'contain' => []
        ]);
        // Verifica se o request utiliza os seguintes métodos: 'patch', 'post', 'put'
        if ($this->request->is(['patch', 'post', 'put'])) {
            // Salva os dados alterados diretamente na Entidade existente (somente os dados
            // alterados serão salvos)
            $user = $this->Users->patchEntity($user, $this->request->data);
            // Salva as alterações da Entidade no Banco de dados
            if ($this->Users->save($user)) {
                // Usa src/Template/Element/Flash/success.ctp com a mensagem passada
                // PORQUE O '__'?
                $this->Flash->success(__('The user has been saved.'));
                // Redireciona para o metodo "index" deste controller, esse redirecionamento
                // deve ser feito na forma de retorno.
                return $this->redirect(['action' => 'index']);
            } else {
                // Usa src/Template/Element/Flash/error.ctp com a mensagem passada
                // PORQUE O '__'?
                $this->Flash->error(__('The user could not be saved. Please, try again.'));
            }
        }
        // PORQUE AO FINAL DO MÉTODO ?
        // Retorna todos os Tipos (UserTypes) presentes na tabela "user_types", limitado a 200
        $userTypes = $this->Users->UserTypes->find('list', ['limit' => 200]);
        // Estou concatenando duas variaveis (uma entidade e um array) em um array
        // usando a função standart do php "compact", e estou enviando este array para
        // a view, as variaveis da view serão substituidas: "user" (pela entidade $user) e userTypes
        // (pelo array $userTypes).
        $this->set(compact('user', 'userTypes'));
        // CARECE EXPLICAÇÃO
        $this->set('_serialize', ['user']);
    }

    /**
     * Delete method
     *
     * @param string|null $id User id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        // Libera metodos HTTP
        $this->request->allowMethod(['post', 'delete']);
        // Recupera a Entidade "User" (Linha da tabela "users") pelo "id"
        // que é a Primary Key
        $user = $this->Users->get($id);
        // Deleta o Registro do banco que casa com a Entidade passada como parametro
        if ($this->Users->delete($user)) {
            // Usa src/Template/Element/Flash/success.ctp com a mensagem passada
            // PORQUE O '__'?
            $this->Flash->success(__('The user has been deleted.'));
        } else {
            // Usa src/Template/Element/Flash/error.ctp com a mensagem passada
            // PORQUE O '__'?
            $this->Flash->error(__('The user could not be deleted. Please, try again.'));
        }
        // Redireciona para o metodo "index" deste controller, esse redirecionamento
        // deve ser feito na forma de retorno.
        return $this->redirect(['action' => 'index']);
    }
}
