<?php
namespace App\Controller;

use App\AppClasses\DataClasses\ResponseMessage;
use App\AppClasses\EnumClasses\CodeEnum;
use App\AppClasses\EnumClasses\NameEnum;
use App\AppClasses\EnumClasses\TypeMessageEnum;
use App\Controller\AppController;
use Cake\Event\Event;

/**
 * Subscribers Controller
 *
 * @property \App\Model\Table\SubscribersTable $Subscribers
 */
class SubscribersController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('subscribers', $this->paginate($this->Subscribers));
        $this->set('_serialize', ['subscribers']);
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
        $subscriber = $this->Subscribers->get($id, [
            'contain' => []
        ]);
        $this->set('subscriber', $subscriber);
        $this->set('_serialize', ['subscriber']);
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
        $subscriber = $this->Subscribers->newEntity();
        if ($this->request->is('post')) {
            $subscriber = $this->Subscribers->patchEntity($subscriber, $this->request->data);
            if ($this->Subscribers->save($subscriber)) {
                //$this->Flash->success(__('The subscriber has been saved.'));
                //return $this->redirect(['action' => 'index']);
                $response = new ResponseMessage();
                $response->code = CodeEnum::SUBSCRIBE_ADDED;
                $response->name = NameEnum::SUBSCRIBE_ADDED;
                $response->type = TypeMessageEnum::SUCCESS;
                $this->response->body(json_encode($response));
            } else {
                //$this->Flash->error(__('The subscriber could not be saved. Please, try again.'));
                $response = new ResponseMessage();
                $response->code = CodeEnum::SUBSCRIBE_NOT_ADDED;
                $response->name = NameEnum::SUBSCRIBE_NOT_ADDED;
                $response->type = TypeMessageEnum::ERROR;
                $this->response->body(json_encode($response));
            }
        }
        //$this->set(compact('subscriber'));
        //$this->set('_serialize', ['subscriber']);
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
        $subscriber = $this->Subscribers->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $subscriber = $this->Subscribers->patchEntity($subscriber, $this->request->data);
            if ($this->Subscribers->save($subscriber)) {
                $this->Flash->success(__('The subscriber has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The subscriber could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('subscriber'));
        $this->set('_serialize', ['subscriber']);
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
        $this->request->allowMethod(['post', 'delete']);
        $subscriber = $this->Subscribers->get($id);
        if ($this->Subscribers->delete($subscriber)) {
            $this->Flash->success(__('The subscriber has been deleted.'));
        } else {
            $this->Flash->error(__('The subscriber could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['add', 'index']);
    }
}
