<?php
namespace App\Controller;

use App\AppClasses\EnumClasses\CodeEnum;
use App\AppClasses\EnumClasses\MessageEnum;
use App\AppClasses\EnumClasses\NameEnum;
use App\AppClasses\EnumClasses\TypeMessageEnum;
use App\Controller\AppController;
use Cake\Event\Event;
use App\AppClasses\DataClasses\ResponseMessage;

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

        $userId = $this->Auth->user('id');
        $this->set('userId', $userId);

        //-------------------------------------------------------------------------

        $username = $this->Auth->user('username');
        $this->set('username', $username);

        //-------------------------------------------------------------------------

        $email = $this->Auth->user('email');
        $this->set('email', $email);

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
        $this->autoRender = false;
        $this->response->type('json');
        $user = $this->Users->newEntity();
        if ($this->request->is('post')) {
            $user = $this->Users->patchEntity($user, $this->request->data);
            if ($this->Users->save($user)) {
                //$this->Flash->success(__('The user has been saved.'));
                //return $this->redirect(['action' => 'index']);
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_ADDED;
                $response->name = NameEnum::USER_ADDED;
                $response->type = TypeMessageEnum::SUCCESS;
                $this->response->body(json_encode($response));
            } else {
                //$this->Flash->error(__('The user could not be saved. Please, try again.'));
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_NOT_ADDED;
                $response->name = NameEnum::USER_NOT_ADDED;
                $response->type = TypeMessageEnum::ERROR;
                $this->response->body(json_encode($response));
            }
        }
        //$userTypes = $this->Users->UserTypes->find('list', ['limit' => 200]);
        //$this->set(compact('user', 'userTypes'));
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
        $this->autoRender = false;
        $this->response->type('json');
        $user = $this->Users->get($id);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $user = $this->Users->patchEntity($user, $this->request->data);
            if ($this->Users->save($user)) {
                //$this->Flash->success(__('The user has been saved.'));
                //return $this->redirect(['action' => 'index']);
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_EDITED;
                $response->name = NameEnum::USER_EDITED;
                $response->type = TypeMessageEnum::SUCCESS;
                $this->response->body(json_encode($response));
            } else {
                //$this->Flash->error(__('The user could not be saved. Please, try again.'));
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_NOT_EDITED;
                $response->name = NameEnum::USER_NOT_EDITED;
                $response->type = TypeMessageEnum::ERROR;
                $this->response->body(json_encode($response));
            }
        }
        //$userTypes = $this->Users->UserTypes->find('list', ['limit' => 200]);
        //$this->set(compact('user', 'userTypes'));
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
        $this->autoRender = false;
        $this->response->type('json');
        //Quando acessado via GET é lançado a exceção: Method Not Allowed
        $this->request->allowMethod(['post', 'delete']);
        $user = $this->Users->get($id);
        if ($this->Users->delete($user)) {
            //$this->Flash->success(__('The user has been deleted.'));
            //return $this->redirect(['action' => 'index']);
            $response = new ResponseMessage();
            $response->code = CodeEnum::USER_DELETED;
            $response->name = NameEnum::USER_DELETED;
            $response->type = TypeMessageEnum::SUCCESS;
            $this->response->body(json_encode($response));
        } else {
            //$this->Flash->error(__('The user could not be deleted. Please, try again.'));
            $response = new ResponseMessage();
            $response->code = CodeEnum::USER_NOT_DELETED;
            $response->name = NameEnum::USER_NOT_DELETED;
            $response->type = TypeMessageEnum::ERROR;
            $this->response->body(json_encode($response));
        }
        //return $this->redirect(['action' => 'index']);
    }

    public function login()
    {
        $this->autoRender = false;
        $this->response->type('json');
        if ($this->request->is('post')) {
            $user = $this->Auth->identify();
            if ($user) {
                $this->Auth->setUser($user);
                //return $this->redirect($this->Auth->redirectUrl());
                $response = new ResponseMessage();
                $response->code = CodeEnum::LOGIN_GRANTED;
                $response->name = NameEnum::LOGIN_GRANTED;
                $response->type = TypeMessageEnum::SUCCESS;
                $this->response->body(json_encode($response));
            }else {
                $response = new ResponseMessage();
                $response->code = CodeEnum::LOGIN_DENIED;
                $response->name = NameEnum::LOGIN_DENIED;
                $response->message = MessageEnum::USER_PASS_INCORRECT;
                $response->type = TypeMessageEnum::ERROR;
                $this->response->body(json_encode($response));
            }
        }
    }

    public function logout()
    {
        $this->Flash->success('You are now logged out.');
        return $this->redirect($this->Auth->logout());
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['add', 'login', 'logout', 'index']);
    }

    public function isAuthorized($user = null)
    {
        // Only access action with your 'id'
        if ((int) $this->request->params['pass'][0] === $user['id']){
            return true;
        }

        return parent::isAuthorized($user);
    }
}