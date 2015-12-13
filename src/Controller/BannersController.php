<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;

/**
 * Banners Controller
 *
 * @property \App\Model\Table\BannersTable $Banners
 */
class BannersController extends AppController
{
	public function initialize()
    {
        parent::initialize();
        $this->loadComponent('RequestHandler');
    }

    /**
     * myBanners method
     * Gera a página http://localhost:8765/banners/my-banners/:$userId
     *
     * Faz as chamadas ao banco para buscar os "banners" de determinado
     * usuário que serão exibidos e os dados do "usuário" que serão
     * exibidos implicitamente.
     *
     * @param string $userId User id.
     * @return void
     */
    public function myBanners($storeId)
    {
        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');
        $pageTitle = $this->Auth->User('username') . ' - Banners';

        $this->loadModel('Stores');
        $stores = $this->Stores->myStores($userId);

        $fullBanners = $this->Banners->myFull($storeId);
        $smallBanners = $this->Banners->mySmall($storeId);

        $this->set(compact('userId', 'username', 'fullBanners', 'smallBanners',
            'stores', 'pageTitle'));
    }

    /**
     * View method
     *
     * @param string|null $id Banner id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $banner = $this->Banners->get($id, [
            'contain' => ['BannerTypes', 'Users']
        ]);
        $this->set('banner', $banner);
        $this->set('_serialize', ['banner']);
    }

    public function getBannerJson($id = null){
        $banner = $this->Banners->getBanner($id);
        $this->set('banner', $banner);
		$this->set('_serialize', 'banner');
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $banner = $this->Banners->newEntity();
        if ($this->request->is('post')) {
            $banner = $this->Banners->patchEntity($banner, $this->request->data);
            if ($this->Banners->save($banner)) {
                $this->Flash->success(__('The banner has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The banner could not be saved. Please, try again.'));
            }
        }
        $bannerTypes = $this->Banners->BannerTypes->find('list', ['limit' => 200]);
        $users = $this->Banners->Users->find('list', ['limit' => 200]);
        $this->set(compact('banner', 'bannerTypes', 'users'));
        $this->set('_serialize', ['banner']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Banner id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $banner = $this->Banners->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $banner = $this->Banners->patchEntity($banner, $this->request->data);
            if ($this->Banners->save($banner)) {
                $this->Flash->success(__('The banner has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The banner could not be saved. Please, try again.'));
            }
        }
        $bannerTypes = $this->Banners->BannerTypes->find('list', ['limit' => 200]);
        $users = $this->Banners->Users->find('list', ['limit' => 200]);
        $this->set(compact('banner', 'bannerTypes', 'users'));
        $this->set('_serialize', ['banner']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Banner id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $banner = $this->Banners->get($id);
        if ($this->Banners->delete($banner)) {
            $this->Flash->success(__('The banner has been deleted.'));
        } else {
            $this->Flash->error(__('The banner could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['getBannerJson', 'myBanners']);
    }

    public function isAuthorized($user = null)
    {
        // Only access action with your 'id'
        // The owner of an banner can edit and delete it
        if (in_array($this->request->action, ['edit', 'delete', 'view'])) {
            $bannerId = (int)$this->request->params['pass'][0];
            if ($this->Banners->isOwnedBy($bannerId, $user['id'])) {
                return true;
            }
        }

        return parent::isAuthorized($user);
    }
}
