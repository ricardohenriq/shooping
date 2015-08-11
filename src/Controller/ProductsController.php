<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Products Controller
 *
 * @property \App\Model\Table\ProductsTable $Products
 */
class ProductsController extends AppController
{
    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Stores']
        ];
        $this->set('products', $this->paginate($this->Products));
        $this->set('_serialize', ['products']);
    }

    /**
     * View method
     *
     * @param string|null $id Product id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id)
    {
        if($this->request->is('get'))
        {
            $product = $this->Products->get($id, [
                'contain' => ['Stores', 'Bookings', 'ProductFeatures']
            ]);

            //////----------------
            $this->loadModel('Features');
            $recentFeatures = [];

            foreach($product['product_features'] as $product_feature)
            {
                $recentFeatures[] = $this->Features->get($product_feature['feature_id']);
            }

            $product['features'] = $recentFeatures;
            //////------------------

            $this->set('product', $product);

            //$productImages = $this->Search->listAllProductsImages($product['id']);
            //$this->set('productImages', $productImages);

            $bannerType = 2;
            $bannersQuantity = 1;
            $fullBanners = $this->Search->listAllBanners($bannerType, $bannersQuantity);
            $this->set('fullBanners', $fullBanners);

            $mediaTypeId = 1;
            $productImages = $this->Search->listAllProductsImages($id, $mediaTypeId);
            $this->set('productImages', $productImages);

            $logged = $this->Auth->user();
            $this->set('logged', $logged);

            $this->set('pageTitle', $product['product_name'].' - Stores');
        }
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $product = $this->Products->newEntity();
        if ($this->request->is('post')) {
            $product = $this->Products->patchEntity($product, $this->request->data);
            if ($this->Products->save($product)) {
                $this->Flash->success(__('The product has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The product could not be saved. Please, try again.'));
            }
        }
        $stores = $this->Products->Stores->find('list', ['limit' => 200]);
        $this->set(compact('product', 'stores'));
        $this->set('_serialize', ['product']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Product id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $product = $this->Products->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $product = $this->Products->patchEntity($product, $this->request->data);
            if ($this->Products->save($product)) {
                $this->Flash->success(__('The product has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The product could not be saved. Please, try again.'));
            }
        }
        $stores = $this->Products->Stores->find('list', ['limit' => 200]);
        $this->set(compact('product', 'stores'));
        $this->set('_serialize', ['product']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Product id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $product = $this->Products->get($id);
        if ($this->Products->delete($product)) {
            $this->Flash->success(__('The product has been deleted.'));
        } else {
            $this->Flash->error(__('The product could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }

    public function mostPopular()
    {
        $this->autoRender = false;
        if($this->request->is('post'))
        {
            $productsQuantity = 4;
            $order = 'DESC';
            $column = 'visited';
            $subCategoryId = $this->request->data['subCategory'];
            $productsMostPopular = $this->Search->listProductsByTrend($subCategoryId, $productsQuantity, $column, $order);
            //$this->set('productsMostPopular', $productsMostPopular);
            //$this->set('_serialize',array('productsMostPopular'));
            echo json_encode($productsMostPopular);
        }
    }

    public function search()
    {
        if($this->request->is('get'))
        {
            $search = $this->request->query['search'];

            //-------------------------------------------------------------------------

            $productsView = $this->Url->getQuerystringKey('products-view');
            $this->set('productsView', $productsView);

            //-------------------------------------------------------------------------

            $urls = $this->Url->createUrl('products','search', 'products-view', ['3', '6', '9']);

            $selectOptionsProductViews = array_combine($urls, ['3', '6', '9']);
            $this->set('selectOptionsProductViews', $selectOptionsProductViews);

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

            $this->paginate = $this->Search->createProductsPaginate($search);
            $products = $this->paginate($this->Products);
            $this->set('products', $products);

            //-------------------------------------------------------------------------

            @$startEndProducts = $this->calcStartEndPaginator($products, $this->request->query['page'],
                $productsView);
            $this->set('startEndProducts', $startEndProducts);

            //-------------------------------------------------------------------------

            $qtdProducts = $this->Search->countTotalProducts($search);
            $this->set('qtdProducts', $qtdProducts);

            //-------------------------------------------------------------------------

            $bannerType = 1;
            $bannersQuantity = 3;
            $smallBanners = $this->Search->listAllBanners($bannerType, $bannersQuantity);
            $this->set('smallBanners', $smallBanners);

            //-------------------------------------------------------------------------

            $bannerType = 2;
            $bannersQuantity = 1;
            $fullBanners = $this->Search->listAllBanners($bannerType, $bannersQuantity);
            $this->set('fullBanners', $fullBanners);

            //-------------------------------------------------------------------------

            $logged = $this->Auth->user();
            $this->set('logged', $logged);

            //-------------------------------------------------------------------------

            $this->set('pageTitle', $search.' - Stores');

            //-------------------------------------------------------------------------

            @$pagina = $this->getCurrentPage();
            @$this->set('pagina', $pagina);

            //-------------------------------------------------------------------------

            $this->set('numPaginas', $this->getNumPaginas($qtdProducts, $productsView));

            //-------------------------------------------------------------------------

            $this->set('url', $this->Url->getUrlWithoutParam('products','search','page'));

            //-------------------------------------------------------------------------

            $this->set('previousNextPage', $this->Url->getPreviousNextPage($pagina));
        }
    }

    private function getCurrentPage()
    {
        if($this->request->query['page'] > 1)
        {
            return $this->request->query['page'];
        }else
        {
            return 1;
        }
    }

    private function getNumPaginas($total, $productsView)
    {
        return ceil($total / $productsView);
    }

    private function calcStartEndPaginator($products, $pageNumber, $productsView)
    {
        if($pageNumber <= 1)
        {
            $startProducts = 1;
        }else
        {
            $startProducts = ($pageNumber - 1) * $productsView + 1;
        }

        $endProducts = count($products) + $startProducts - 1;

        return ['startProducts' => $startProducts, 'endProducts' => $endProducts];
    }
	
	public function upload() 
	{
        if ($this->request->is('post')) {
            $mediaTypeId = 1;
            $productId = 2;
            $path = $this->request->data['Media']['file']['tmp_name'];
            $inserted = $this->Insert->insertMedia($mediaTypeId, $productId, $path);

            //-------------------------------------------------------------------------

            $stringSeparator = '_';
            $storeName = 'Lojinha';
            $productName = 'Gostosa';
            $saved = $this->UploadFile->saveFileLFS($stringSeparator, $storeName,
                $productName);

            if($inserted === true && $saved === true){
                $this->Flash->set(__('Upload successful!'));
            }
        }
    }
}