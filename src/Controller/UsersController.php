<?php
namespace App\Controller;

use App\Lib\EnumClasses\CodeEnum;
use App\Lib\EnumClasses\MessageEnum;
use App\Lib\EnumClasses\NameEnum;
use App\Lib\EnumClasses\TypeMessageEnum;
use Cake\Event\Event;
use App\Lib\DataClasses\ResponseMessage;

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

        $this->loadModel('Banners');
        $fullBanners = $this->Banners->full();
        $smallBanners = $this->Banners->small();

        $userId = $user->id;
        $username = $user->username;
        $email =  $user->email;
        $pageTitle = $username . ' - Stores';

        $this->loadModel('Stores');
        $stores = $this->Stores->myStores($userId);

        $this->loadModel('Bookings');
        $quantityBookings = $this->Bookings->getQuantityBookings($userId);

        $this->loadModel('Offers');
        $quantityActiveOffers = $this->Offers->getQuantityActiveOffers($userId);
        $quantityPausedOffers = $this->Offers->getQuantityPausedOffers($userId);
        $quantityEndedOffers = $this->Offers->getQuantityEndedOffers($userId);

        $this->loadModel('Comments');
        $quantityUnansweredComments = $this->Comments->getQuantityUnansweredComments($userId);
        $quantityAnsweredComments = $this->Comments->getQuantityAnsweredComments($userId);

        $this->set(compact('stores', 'fullBanners', 'smallBanners', 'userId',
            'username', 'email', 'pageTitle', 'user', 'quantityBookings',
            'quantityActiveOffers', 'quantityPausedOffers', 'quantityEndedOffers',
            'quantityUnansweredComments', 'quantityAnsweredComments'));
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