<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

/**
 * BannerTypes Controller
 *
 * @property \App\Model\Table\BannerTypesTable $BannerTypes
 */
class BannerTypesController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('bannerTypes', $this->paginate($this->BannerTypes));
        $this->set('_serialize', ['bannerTypes']);
    }

    /**
     * View method
     *
     * @param string|null $id Banner Type id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $bannerType = $this->BannerTypes->get($id, [
            'contain' => ['Banners']
        ]);
        $this->set('bannerType', $bannerType);
        $this->set('_serialize', ['bannerType']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $bannerType = $this->BannerTypes->newEntity();
        if ($this->request->is('post')) {
            $bannerType = $this->BannerTypes->patchEntity($bannerType, $this->request->data);
            if ($this->BannerTypes->save($bannerType)) {
                $this->Flash->success(__('The banner type has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The banner type could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('bannerType'));
        $this->set('_serialize', ['bannerType']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Banner Type id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $bannerType = $this->BannerTypes->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $bannerType = $this->BannerTypes->patchEntity($bannerType, $this->request->data);
            if ($this->BannerTypes->save($bannerType)) {
                $this->Flash->success(__('The banner type has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The banner type could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('bannerType'));
        $this->set('_serialize', ['bannerType']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Banner Type id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $bannerType = $this->BannerTypes->get($id);
        if ($this->BannerTypes->delete($bannerType)) {
            $this->Flash->success(__('The banner type has been deleted.'));
        } else {
            $this->Flash->error(__('The banner type could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['index']);
    }

    public function isAuthorized($user = null)
    {
        return parent::isAuthorized($user);
    }
}
