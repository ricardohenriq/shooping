<?php
namespace App\Controller;

use Cake\Cache\Cache;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;

/**
 * Stores Controller
 *
 * @property \App\Model\Table\StoresTable $Stores
 */
class StoresController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Users']
        ];
        $this->set('stores', $this->paginate($this->Stores));
        $this->set('_serialize', ['stores']);
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
        $store = $this->Stores->get($id, [
            'contain' => ['Users', 'Products']
        ]);
        $this->set('store', $store);
        $this->set('_serialize', ['store']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $store = $this->Stores->newEntity();
        if ($this->request->is('post')) {
            $store = $this->Stores->patchEntity($store, $this->request->data);
            if ($this->Stores->save($store)) {
                $this->Flash->success(__('The store has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The store could not be saved. Please, try again.'));
            }
        }
        $users = $this->Stores->Users->find('list', ['limit' => 200]);
        $this->set(compact('store', 'users'));
        $this->set('_serialize', ['store']);
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

        list($fullBanners, $smallBanners,) = Cache::remember(
            'banners', function(){
            $this->loadModel('Banners');
            $fullBanners = $this->Banners->full();
            $smallBanners = $this->Banners->small();
            return [$fullBanners, $smallBanners];
        });

        $stores = Cache::remember(
            'stores', function(){
            $stores = $this->Stores->myStores($this->Auth->user('id'));
            return $stores;
        });

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
        $this->request->allowMethod(['post', 'delete']);
        $store = $this->Stores->get($id);
        if ($this->Stores->delete($store)) {
            $this->Flash->success(__('The store has been deleted.'));
        } else {
            $this->Flash->error(__('The store could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }

    public function miniMap()
    {
        list($fullBanners, $smallBanners) = Cache::remember('banners', function(){
            $this->loadModel('Banners');
            $fullBanners = $this->Banners->full();
            $smallBanners = $this->Banners->small();
            return [$fullBanners, $smallBanners];
        });

        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');
        $this->set(compact('fullBanners', 'smallBanners', 'userId', 'username'));
    }

    public function myStores()
    {
        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');

        list($fullBanners, $smallBanners,) = Cache::remember(
            'banners', function(){
            $this->loadModel('Banners');
            $fullBanners = $this->Banners->full();
            $smallBanners = $this->Banners->small();
            return [$fullBanners, $smallBanners];
        });

        $stores = Cache::remember(
            'stores', function(){
            $stores = $this->Stores->myStores($this->Auth->user('id'));
            return $stores;
        });

        $this->set(compact('fullBanners', 'smallBanners', 'userId', 'username',
            'stores'));
    }

    public function favoriteStores()
    {
        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');

        list($fullBanners, $smallBanners,) = Cache::remember(
            'banners', function(){
            $this->loadModel('Banners');
            $fullBanners = $this->Banners->full();
            $smallBanners = $this->Banners->small();
            return [$fullBanners, $smallBanners];
        });

        list($stores, $favoriteStores) = Cache::remember(
            'stores', function(){
            $stores = $this->Stores->myStores($this->Auth->user('id'));
            $favoriteStores = $this->Stores->favoriteStores();
            return [$stores, $favoriteStores];
        });

        $this->set(compact('fullBanners', 'smallBanners', 'userId', 'username',
            'stores', 'favoriteStores'));
    }

    public function search()
    {
        if($this->request->is('get'))
        {
            $search = $this->request->query['search'];
            @$productsView = $this->request->query['stores-view'] ?: 3;
            @$productsOrder = $this->request->query['stores-order'];
            @$page = $this->request->query['page'] ?: 1;

            //-------------------------------------------------------------------------

            $this->set('productsView', $productsView);

            //-------------------------------------------------------------------------

            $urls = $this->Url->createUrl('stores','search', 'stores-view', ['3', '6', '9']);

            $selectOptionsViews = array_combine($urls, ['3', '6', '9']);
            $this->set('selectOptionsViews', $selectOptionsViews);

            //-------------------------------------------------------------------------

            $productsOrder = ['most-popular' => 'Mais Visitados', 'most-sold' => 'Mais Vendidos',
                'lowest-price' => 'Menor Preço', 'highest-price' => 'Maior Preço'];
            $this->set('orderView', $this->Url->getQuerystringKeyWithArray('products-order', $productsOrder));

            //-------------------------------------------------------------------------

            $urls = $this->Url->createUrl('products','search', 'products-order', ['most-popular', 'most-sold',
                'lowest-price', 'highest-price']);

            $selectOptionsOrderView = array_combine($urls, ['Mais Visitados', 'Mais Vendidos',
                'Menor Preço', 'Maior Preço']);
            $this->set('selectOptionsOrderView', $selectOptionsOrderView);

            //-------------------------------------------------------------------------

            $setting = [
                'fields' => ['id', 'product_name', 'quantity', 'sold', 'description', 'price',
                    'old_price'],
                'conditions' => ['product_name LIKE' => '%'.$search.'%'],
                'order' => ['price' => 'DESC'],
                'limit' => $productsView,
                'offset' => ($page * $productsView) - $productsView
            ];
            $products = TableRegistry::get('Products')
                ->find('all', $setting)->hydrate(false)->toArray();

            $productsSize = count($products);
            for($i = 0; $i < $productsSize ; $i++)
            {
                $setting = [
                    'fields' => ['path'],
                    'conditions' => ['product_id' => $products[$i]['id'], 'media_type_id' => 3]
                ];
                $products[$i]['thumb'] = TableRegistry::get('Medias')
                    ->find('all', $setting)->hydrate(false)->first()['path'];
            }
            $this->set('products', $products);

            //-------------------------------------------------------------------------

            @$startEndProducts = $this->CustomPagination->calcStartEndPaginator($products, $this->request->query['page'],
                $productsView);
            $this->set('startEndProducts', $startEndProducts);

            //-------------------------------------------------------------------------

            $setting = [
                'conditions' => ['product_name LIKE' => '%'.$search.'%']
            ];
            $qtdProducts = TableRegistry::get('Products')
                ->find('all', $setting)->count();
            $this->set('qtdProducts', $qtdProducts);

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

            $this->set('pageTitle', $search.' - Stores');

            //-------------------------------------------------------------------------

            $this->set('username', $this->Auth->user('username'));

            //-------------------------------------------------------------------------

            $categories = TableRegistry::get('Categories')
                ->find()->hydrate(false)->toArray();
            $this->set('categories', $categories);

            //-------------------------------------------------------------------------

            $subCategories = TableRegistry::get('SubCategories')
                ->find()->hydrate(false)->toArray();
            $this->set('subCategories', $subCategories);

            //-------------------------------------------------------------------------

            @$pagina = $this->CustomPagination->getCurrentPage();
            @$this->set('pagina', $pagina);

            //-------------------------------------------------------------------------

            $this->set('numPaginas', $this->CustomPagination->getNumPaginas($qtdProducts, $productsView));

            //-------------------------------------------------------------------------

            $this->set('url', $this->Url->getUrlWithoutParam('products','search','page'));

            //-------------------------------------------------------------------------

            $this->set('previousNextPage', $this->Url->getPreviousNextPage($pagina));

            //-------------------------------------------------------------------------

            $this->set('search', $search);
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
