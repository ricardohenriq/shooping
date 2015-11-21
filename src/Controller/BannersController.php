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
    public function myBanners($userId)
    {
        $setting = [
            'fields' => ['store_name', 'id', 'created', 'modified'],
            'conditions' => ['user_id' => $this->Auth->user('username')]
        ];
        $stores = TableRegistry::get('Stores')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('stores', $stores);

        //-------------------------------------------------------------------------

        $setting = [
            'fields' => ['id', 'banner_description', 'path_banner', 'url_redirect'],
            'conditions' => ['banner_type_id' => 1, 'user_id' => $userId]
        ];
        $smallBanners = TableRegistry::get('Banners')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('smallBanners', $smallBanners);

        //-------------------------------------------------------------------------

        $setting = [
            'fields' => ['id', 'banner_description', 'path_banner', 'url_redirect'],
            'conditions' => ['banner_type_id' => 2, 'user_id' => $userId]
        ];
        $fullBanners = TableRegistry::get('Banners')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('fullBanners', $fullBanners);

        //-------------------------------------------------------------------------

        $this->set('pageTitle', $this->Auth->User('username') . ' - Banners');

        //-------------------------------------------------------------------------

        $this->set('username', $this->Auth->user('username'));

        //-------------------------------------------------------------------------

        $this->set('userId', $this->Auth->user('id'));

        //-------------------------------------------------------------------------

        $this->set('search', '');
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
        $this->autoRender = false;
        $this->response->type('json');
        $setting = [
            'fields' => ['id', 'path_banner', 'banner_description', 'banner_type_id',
                'url_redirect', 'created', 'modified'],
            'conditions' => ['id' => $id]
        ];
        $banner = TableRegistry::get('Banners')
            ->find('all', $setting)->hydrate(false)->first();
        $this->response->body(json_encode($banner));
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
