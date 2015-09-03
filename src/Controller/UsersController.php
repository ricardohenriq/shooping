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
        $this->paginate = [
            'limit' => 10,
            'contain' => ['UserTypes']
        ];
        $this->set('users', $this->paginate($this->Users));
        //$this->set('_serialize', ['users']);
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
        $user = $this->Users->get($id, [
            'contain' => ['UserTypes', 'Bookings', 'Stores']
        ]);
        $user['picture'] = 'face200x200.png';
        $this->set('user', $user);

        //-------------------------------------------------------------------------

        $bannerType = 1;
        $bannersQuantity = 3;
        $smallBanners = $this->Search->listAllBanners($bannerType, $bannersQuantity);
        $this->set('smallBanners', $smallBanners);

        //-------------------------------------------------------------------------

        $bannerType = 2;
        $bannersQuantity = 1;
        $fullBanners = $this->Search->listAllBanners($bannerType, $bannersQuantity);
        $this->set('fullBanners', $fullBanners);

        //-------------------------------------------------------------------------

        $logged = $this->Auth->user();
        $this->set('logged', $logged);

        //-------------------------------------------------------------------------

        $this->set('pageTitle', $user['username'] . ' - Stores');
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $user = $this->Users->newEntity();
        if ($this->request->is('post')) {
            $user = $this->Users->patchEntity($user, $this->request->data);
            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The user could not be saved. Please, try again.'));
            }
        }
        $userTypes = $this->Users->UserTypes->find('list', ['limit' => 200]);
        $this->set(compact('user', 'userTypes'));
        //$this->set('_serialize', ['user']);
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
        $user = $this->Users->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $user = $this->Users->patchEntity($user, $this->request->data);
            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The user could not be saved. Please, try again.'));
            }
        }
        $userTypes = $this->Users->UserTypes->find('list', ['limit' => 200]);
        $this->set(compact('user', 'userTypes'));
        //$this->set('_serialize', ['user']);
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
        $this->request->allowMethod(['post', 'delete']);
        $user = $this->Users->get($id);
        if ($this->Users->delete($user)) {
            $this->Flash->success(__('The user has been deleted.'));
        } else {
            $this->Flash->error(__('The user could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }

    public function login()
    {
        if ($this->request->is('post')) {
            $user = $this->Auth->identify();
            if ($user) {
                $this->Auth->setUser($user);
                return $this->redirect($this->Auth->redirectUrl());
            }
            $this->Flash->error('Your username or password is incorrect.');
        }
    }

    public function logout()
    {
        $this->Flash->success('You are now logged out.');
        return $this->redirect($this->Auth->logout());
    }

    // Este método é executado antes de cada ação dos controllers. É um ótimo lugar para
    // verificar se há uma sessão ativa ou inspecionar as permissões de um usuário.
    // Neste caso libera o acesso a action 'add' (bloqueado pelo AuthComponent)
    public function beforeFilter(\Cake\Event\Event $event)
    {
        $this->Auth->allow(['add']);
    }
}
