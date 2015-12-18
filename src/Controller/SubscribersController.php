<?php
namespace App\Controller;

use App\Lib\DataClasses\ResponseMessage;
use App\Lib\EnumClasses\CodeEnum;
use App\Lib\EnumClasses\NameEnum;
use App\Lib\EnumClasses\TypeMessageEnum;
use Cake\Event\Event;

/**
 * Subscribers Controller
 *
 * @property \App\Model\Table\SubscribersTable $Subscribers
 */
class SubscribersController extends AppController
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
     * @param string|null $id Subscriber id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {

    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $subscriber = $this->Subscribers->newEntity();
        if ($this->request->is('post')) {
            $subscriber = $this->Subscribers->patchEntity($subscriber, $this->request->data);
            if ($this->Subscribers->save($subscriber)) {
                $response = new ResponseMessage();
                $response->code = CodeEnum::SUBSCRIBE_ADDED;
                $response->name = NameEnum::SUBSCRIBE_ADDED;
                $response->type = TypeMessageEnum::SUCCESS;
                $this->set('response', $response);
                $this->set('_serialize', 'response');
            } else {
                $response = new ResponseMessage();
                $response->code = CodeEnum::SUBSCRIBE_NOT_ADDED;
                $response->name = NameEnum::SUBSCRIBE_NOT_ADDED;
                $response->type = TypeMessageEnum::ERROR;
                $this->set('response', $response);
                $this->set('_serialize', 'response');
            }
        }
    }

    /**
     * Edit method
     *
     * @param string|null $id Subscriber id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {

    }

    /**
     * Delete method
     *
     * @param string|null $id Subscriber id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {

    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['add', 'index']);
    }
}
