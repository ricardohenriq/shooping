<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

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

    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['getBannerJson', 'myBanners', 'add', 'delete']);
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
