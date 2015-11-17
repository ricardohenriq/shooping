<?php
namespace App\Controller;

use App\AppClasses\EnumClasses\CodeEnum;
use App\AppClasses\EnumClasses\MessageEnum;
use App\AppClasses\EnumClasses\NameEnum;
use App\AppClasses\EnumClasses\TypeMessageEnum;
use App\Controller\AppController;
use Cake\Event\Event;
use App\AppClasses\DataClasses\ResponseMessage;
use Cake\ORM\TableRegistry;

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
        $user = $this->Users->get($id);
        $user['picture'] = 'face200x200.png';
        $this->set('user', $user);

        //-------------------------------------------------------------------------

        $setting = [
            'fields' => ['id', 'banner_description', 'path_banner', 'url_redirect'],
            'conditions' => ['banner_type_id' => 2],
            'limit' => 1
        ];
        $fullBanners = TableRegistry::get('Banners')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('fullBanners', $fullBanners);

        //-------------------------------------------------------------------------

        $setting = [
            'fields' => ['id', 'banner_description', 'path_banner', 'url_redirect'],
            'conditions' => ['banner_type_id' => 1],
            'limit' => 3
        ];
        $smallBanners = TableRegistry::get('Banners')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('smallBanners', $smallBanners);

        //-------------------------------------------------------------------------

        $this->set('userId', $this->Auth->user('id'));

        //-------------------------------------------------------------------------

        $this->set('username', $this->Auth->user('username'));

        //-------------------------------------------------------------------------

        $this->set('email', $this->Auth->user('email'));

        //-------------------------------------------------------------------------

        $this->set('pageTitle', $user['username'] . ' - Stores');

        //-------------------------------------------------------------------------

        $setting = [
            'fields' => ['store_name', 'id', 'created', 'modified'],
            'conditions' => ['user_id' => $this->Auth->user('username')]
        ];
        $stores = TableRegistry::get('Stores')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('stores', $stores);

        //-------------------------------------------------------------------------

        $setting = [
            'conditions' => ['user_id' => $this->Auth->user('username')]
        ];
        $quantityBookings = TableRegistry::get('Bookings')
            ->find('all', $setting)->count();
        $this->set('quantityBookings', $quantityBookings);

        //-------------------------------------------------------------------------

        //Após a remodelagem do banco passeremos o status da "Offer"
        $setting = [
            'conditions' => ['user_id' => $this->Auth->user('username')]
        ];
        $quantityActiveOffers = TableRegistry::get('OfferBanners')
            ->find('all', $setting)->count();
        $this->set('quantityActiveOffers', $quantityActiveOffers);

        //-------------------------------------------------------------------------

        //Após a remodelagem do banco passeremos o status da "Offer"
        $setting = [
            'conditions' => ['user_id' => $this->Auth->user('username')]
        ];
        $quantityPausedOffers = TableRegistry::get('OfferBanners')
            ->find('all', $setting)->count();
        $this->set('quantityPausedOffers', $quantityPausedOffers);

        //-------------------------------------------------------------------------

        //Após a remodelagem do banco passeremos o status da "Offer"
        $setting = [
            'conditions' => ['user_id' => $this->Auth->user('username')]
        ];
        $quantityEndedOffers = TableRegistry::get('OfferBanners')
            ->find('all', $setting)->count();
        $this->set('quantityEndedOffers', $quantityEndedOffers);

        //-------------------------------------------------------------------------

        $setting = [
            'conditions' => ['user_id' => $this->Auth->user('username'),
                    'comment_type_id' => 1, 'answered' => 1
                ]
        ];
        $quantityUnansweredComments = TableRegistry::get('Comments')
            ->find('all', $setting)->count();
        $this->set('quantityUnansweredComments', $quantityUnansweredComments);

        //-------------------------------------------------------------------------

        $setting = [
            'conditions' => ['user_id' => $this->Auth->user('username'),
                'comment_type_id' => 1, 'answered' => 2
            ]
        ];
        $quantityAnsweredComments = TableRegistry::get('Comments')
            ->find('all', $setting)->count();
        $this->set('quantityAnsweredComments', $quantityAnsweredComments);
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
                $this->Auth->setUser($user->toArray());
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_ADDED;
                $response->name = NameEnum::USER_ADDED;
                $response->type = TypeMessageEnum::SUCCESS;
                $this->response->body(json_encode($response));
            } else {
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_NOT_ADDED;
                $response->name = NameEnum::USER_NOT_ADDED;
                $response->type = TypeMessageEnum::ERROR;
                $this->response->body(json_encode($response));
            }
        }
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
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_EDITED;
                $response->name = NameEnum::USER_EDITED;
                $response->type = TypeMessageEnum::SUCCESS;
                $this->response->body(json_encode($response));
            } else {
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_NOT_EDITED;
                $response->name = NameEnum::USER_NOT_EDITED;
                $response->type = TypeMessageEnum::ERROR;
                $this->response->body(json_encode($response));
            }
        }
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
            $this->request->session()->destroy();
            $response = new ResponseMessage();
            $response->code = CodeEnum::USER_DELETED;
            $response->name = NameEnum::USER_DELETED;
            $response->type = TypeMessageEnum::SUCCESS;
            $this->response->body(json_encode($response));
        } else {
            $response = new ResponseMessage();
            $response->code = CodeEnum::USER_NOT_DELETED;
            $response->name = NameEnum::USER_NOT_DELETED;
            $response->type = TypeMessageEnum::ERROR;
            $this->response->body(json_encode($response));
        }
    }

    public function login()
    {
        $this->autoRender = false;
        $this->response->type('json');
        if ($this->request->is('post')) {
            $user = $this->Auth->identify();
            if ($user) {
                $this->Auth->setUser($user);
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