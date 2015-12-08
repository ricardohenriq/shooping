<?php
namespace App\Controller;

use App\AppClasses\EnumClasses\CodeEnum;
use App\AppClasses\EnumClasses\MessageEnum;
use App\AppClasses\EnumClasses\NameEnum;
use App\AppClasses\EnumClasses\TypeMessageEnum;
use App\Controller\AppController;
use Cake\Cache\Cache;
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
    public function initialize()
    {
        parent::initialize();
        $this->loadComponent('RequestHandler');
    }

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

        //-------------------------------------------------------------------------

        list($fullBanners, $smallBanners) = Cache::remember(
            'banners', function(){
            $this->loadModel('Banners');
            $fullBanners = $this->Banners->full();
            $smallBanners = $this->Banners->small();
            return [$fullBanners, $smallBanners];
        });

        //-------------------------------------------------------------------------

        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');
        $email =  $this->Auth->user('email');
        $pageTitle = $username . ' - Stores';

        //-------------------------------------------------------------------------

        $this->loadModel('Stores');
        $stores = $this->Stores->myStores($userId);

        //-------------------------------------------------------------------------

        $this->loadModel('Bookings');
        $quantityBookings = $this->Bookings->getQuantityBookings($userId);

        //-------------------------------------------------------------------------

        $this->loadModel('Offers');
        $quantityActiveOffers = $this->Offers->getQuantityActiveOffers($userId);
        $quantityPausedOffers = $this->Offers->getQuantityPausedOffers($userId);
        $quantityEndedOffers = $this->Offers->getQuantityEndedOffers($userId);

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

        $this->set(compact('stores', 'fullBanners', 'smallBanners', 'userId',
            'username', 'email', 'pageTitle', 'user', 'quantityBookings',
            'quantityActiveOffers', 'quantityPausedOffers', 'quantityEndedOffers'));
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
                $this->Auth->setUser($user->toArray());
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_ADDED;
                $response->name = NameEnum::USER_ADDED;
                $response->type = TypeMessageEnum::SUCCESS;
                $this->set('response', $response);
                $this->set('_serialize', 'response');
            } else {
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_NOT_ADDED;
                $response->name = NameEnum::USER_NOT_ADDED;
                $response->type = TypeMessageEnum::ERROR;
                $this->set('response', $response);
                $this->set('_serialize', 'response');
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
        $user = $this->Users->get($id);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $user = $this->Users->patchEntity($user, $this->request->data);
            if ($this->Users->save($user)) {
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_EDITED;
                $response->name = NameEnum::USER_EDITED;
                $response->type = TypeMessageEnum::SUCCESS;
                $this->set('response', $response);
                $this->set('_serialize', 'response');
            } else {
                $response = new ResponseMessage();
                $response->code = CodeEnum::USER_NOT_EDITED;
                $response->name = NameEnum::USER_NOT_EDITED;
                $response->type = TypeMessageEnum::ERROR;
                $this->set('response', $response);
                $this->set('_serialize', 'response');
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
        $this->request->allowMethod(['post', 'delete']);
        $user = $this->Users->get($id);
        if ($this->Users->delete($user)) {
            $this->request->session()->destroy();
            $response = new ResponseMessage();
            $response->code = CodeEnum::USER_DELETED;
            $response->name = NameEnum::USER_DELETED;
            $response->type = TypeMessageEnum::SUCCESS;
            $this->set('response', $response);
            $this->set('_serialize', 'response');
        } else {
            $response = new ResponseMessage();
            $response->code = CodeEnum::USER_NOT_DELETED;
            $response->name = NameEnum::USER_NOT_DELETED;
            $response->type = TypeMessageEnum::ERROR;
            $this->set('response', $response);
            $this->set('_serialize', 'response');
        }
    }

    public function login()
    {
        if ($this->request->is('post')) {
            $user = $this->Auth->identify();
            if ($user) {
                $this->Auth->setUser($user);
                $response = new ResponseMessage();
                $response->code = CodeEnum::LOGIN_GRANTED;
                $response->name = NameEnum::LOGIN_GRANTED;
                $response->type = TypeMessageEnum::SUCCESS;
                $this->set('response', $response);
                $this->set('_serialize', 'response');
            }else {
                $response = new ResponseMessage();
                $response->code = CodeEnum::LOGIN_DENIED;
                $response->name = NameEnum::LOGIN_DENIED;
                $response->message = MessageEnum::USER_PASS_INCORRECT;
                $response->type = TypeMessageEnum::ERROR;
                $this->set('response', $response);
                $this->set('_serialize', 'response');
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