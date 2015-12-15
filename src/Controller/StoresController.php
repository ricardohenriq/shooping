<?php
namespace App\Controller;

use Cake\Event\Event;

/**
 * Stores Controller
 *
 * @property \App\Model\Table\StoresTable $Stores
 */
class StoresController extends AppController
{
    public function initialize()
    {
        parent::initialize();
        $this->loadComponent('RequestHandler');
        $this->loadComponent('Paginator');
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
     * @param string|null $id Store id.
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

    }

    /**
     * Edit method
     *
     * @param string|null $id Store id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id)
    {
        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');
        $pageTitle = $username . ' - Banners';

        $this->loadModel('Banners');
        $fullBanners = $this->Banners->full();
        $smallBanners = $this->Banners->small();

        $stores = $this->Stores->myStores($this->Auth->user('id'));

        $this->set(compact('fullBanners', 'smallBanners', 'userId', 'username',
            'stores', 'pageTitle'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Store id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {

    }

    public function miniMap()
    {
        $this->loadModel('Banners');
        $fullBanners = $this->Banners->full();
        $smallBanners = $this->Banners->small();

        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');
        $this->set(compact('fullBanners', 'smallBanners', 'userId', 'username'));
    }

    public function myStores()
    {
        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');

        $this->loadModel('Banners');
        $fullBanners = $this->Banners->full();
        $smallBanners = $this->Banners->small();

        $stores = $this->Stores->myStores($this->Auth->user('id'));

        $this->set(compact('fullBanners', 'smallBanners', 'userId', 'username',
            'stores'));
    }

    public function favoriteStores()
    {
        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');

        $this->loadModel('Banners');
        $fullBanners = $this->Banners->full();
        $smallBanners = $this->Banners->small();

		$this->loadModel('Stores');
        $stores = $this->Stores->myStores($userId);
		
        $favoriteStores = $this->Stores->favoriteStores();

        $this->set(compact('fullBanners', 'smallBanners', 'userId', 'username',
            'stores', 'favoriteStores'));
    }

    public function search()
    {
        if($this->request->is('get'))
        {
            $search = $this->request->query['search'];

            $this->paginate = [
                'conditions' => ['store_name LIKE' => '%' . $search . '%'],
                'maxLimit' => 10,
                'contain' => ['StoreMedias' => function($q){
                    return $q->select(['path', 'product_id'])
                        ->where(['media_type_id' => 3]);
                }]
            ];
            $products = $this->paginate($this->Stores);

            $this->loadModel('Banners');
            $fullBanners = $this->Banners->full();
            $smallBanners = $this->Banners->small();

            $userId = $this->Auth->user('id');
            $pageTitle = $search . ' - Stores';
            $username = $this->Auth->user('username');

            $this->loadModel('Categories');
            $categories = $this->Categories->getAllCategories();

            $this->loadModel('SubCategories');
            $subCategories = $this->SubCategories->getAllSubCategories();

            $this->set(compact('search', 'fullBanners', 'smallBanners', 'categories',
                'subCategories', 'productsView', 'userId', 'pageTitle', 'username',
                'products'));
        }
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['index', 'myStores', 'miniMap', 'view', 'favoriteStores', 'edit', 'search']);
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
