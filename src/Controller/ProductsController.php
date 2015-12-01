<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;

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
     * view method
     * Gera a página http://localhost:8765/products/view/:$id
     *
     * Faz uma chamada ao banco para retornar os dados do produto cujo id é
     * passado pela URL.
     *
     * @param string $id Product id
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id)
    {
        if($this->request->is('get'))
        {
            $product = $this->Products->get($id, [
                'contain' => ['Stores', 'ProductFeatures']
            ]);

            $this->loadModel('Features');
            $product['features'] = [];

            foreach($product['product_features'] as $product_feature)
            {
                $product['features'][] = $this->Features->get($product_feature['feature_id']);
            }

            $this->set('product', $product);

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
                'fields' => ['path'],
                'conditions' => ['product_id' => $id, 'media_type_id' => 1]
            ];
            $productImages = TableRegistry::get('Medias')
                ->find('all', $setting)->hydrate(false)->toArray();
            $this->set('productImages', $productImages);

            //-------------------------------------------------------------------------

            $setting = [
                'fields' => ['path'],
                'conditions' => ['product_id' => $id, 'media_type_id' => 2]
            ];
            $productMainImage = TableRegistry::get('Medias')
                ->find('all', $setting)->hydrate(false)->first();
            $this->set('productMainImage', $productMainImage);

            //-------------------------------------------------------------------------

            $this->set('userId', $this->Auth->user('id'));

            //-------------------------------------------------------------------------

            $this->set('username', $this->Auth->user('username'));

            //-------------------------------------------------------------------------

            $this->set('pageTitle', $product['product_name'].' - Stores');

            //-------------------------------------------------------------------------

            $this->set('search', '');
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
    public function edit($productID)
    {
        $setting = [
            'fields' => ['store_name', 'id', 'created', 'modified'],
            'conditions' => ['user_id' => $this->Auth->user('username')]
        ];
        $stores = TableRegistry::get('Stores')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('stores', $stores);

        //-------------------------------------------------------------------------

        $this->set('pageTitle', $this->Auth->User('username') . ' - Banners');

        //-------------------------------------------------------------------------

        $this->set('username', $this->Auth->user('username'));

        //-------------------------------------------------------------------------

        $this->set('userId', $this->Auth->user('id'));

        //-------------------------------------------------------------------------

        $this->set('search', '');

        /*$product = $this->Products->get($id, [
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
        $this->set('_serialize', ['product']);*/
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

    /**
     * productTrends method
     * Retorna .json em http://localhost:8765/products/product-trends/:$subCategoryId
     *
     * Faz uma chamada ao banco para retornar os produtos de determinada subcategoria
     * que é mais vendido, mais visitado ou mais novos.
     *
     * @param string|int $subCategoryId
     * @return void
     */
    public function productTrends($subCategoryId = 0)
    {
        $this->autoRender = false;
        $this->response->type('json');
        if($this->request->is('get'))
        {
            $limit = 4;
            $setting = [
                'fields' => ['id', 'product_name', 'quantity', 'sold', 'description', 'price',
                    'old_price'],
                'limit' => $limit
            ];
            if($subCategoryId != 0){
                $setting['conditions'] = ['sub_category_id' => $subCategoryId];
            }

            $products = TableRegistry::get('Products')
                ->find('all', $setting)->hydrate(false)->toArray();

            $productsSize = count($products);
            for($i = 0; $i < $productsSize; $i++)
            {
                $setting = [
                    'fields' => ['path'],
                    'conditions' => ['product_id' => $products[$i]['id'], 'media_type_id' => 3]
                ];
                $products[$i]['thumb'] = TableRegistry::get('Medias')
                    ->find('all', $setting)->hydrate(false)->first()['path'];
            }

            $this->response->body(json_encode($products));
        }
    }

    public function search()
    {
        if($this->request->is('get'))
        {
            $search = $this->request->query['search'];
            @$productsView = $this->request->query['products-view'] ?: 3;
            @$productsOrder = $this->request->query['products-order'];
            @$page = $this->request->query['page'] ?: 1;

            //-------------------------------------------------------------------------

            $this->set('productsView', $productsView);

            //-------------------------------------------------------------------------

            $urls = $this->Url->createUrl('products','search', 'products-view', ['3', '6', '9']);

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

	public function upload() 
	{		
        if ($this->request->is('post')) {

            //Save Product entity
            $product = $this->Products->newEntity();
            $product = $this->Products->patchEntity($product, $this->request->data);
            $product->sub_category_id = 18;
            $product->store_id = 1;
            $productSaved = $this->Products->save($product);

            if($productSaved)
            {
                //Save ProductFeatures entities
                $featuresArray = $this->Insert->getFeatuesArray($this->request->data);
                $featuresEntities = $this->Insert->createMassFeaturesEntities($featuresArray, $productSaved['id']);
                $this->Insert->insertMassEntities($featuresEntities, 'ProductFeatures');

                //Upload pictures to folder in server
                $ROOT_PATH = dirname(ROOT) . DS;
                $PRODUCTS_IMAGES_FOLDER = $ROOT_PATH . 'ShoppingResources' . DS . 'img' . DS . $productSaved['id'];
                $imagesUploaded = $this->UploadFile->uploadFiles($PRODUCTS_IMAGES_FOLDER, $this->request->data['file']);

                //Create and Upload thumbnail to folder in server
                $outputThumb = str_replace($PRODUCTS_IMAGES_FOLDER, $ROOT_PATH . 'ShoppingResources' . DS . 'thumb', $imagesUploaded[0]['url']);
                $imageResized = $this->UploadFile->resizeImage([
                    'input' => $imagesUploaded[0]['url'], 'output' => $outputThumb, 'width' => 250, 'height' => 250, 'mode' => 'stretch'
                ]);

                //Prepare image data array to be transformed into entity
                $thumbUploaded['url'] = str_replace($ROOT_PATH, 'http://localhost/PROJETOS/', $outputThumb);
                $thumbUploaded['url'] = str_replace('\\', '/', $thumbUploaded['url']);
                $thumbUploaded['media_type_id'] = 3;

                //Save Media entity (thumbnail)
                $mediaEntity = $this->Insert->createMediaEntity($thumbUploaded, $productSaved['id']);
                TableRegistry::get('Medias')->save($mediaEntity);

                //Prepare image data array to be transformed into entities
                $imagesUploaded = $this->Insert->addKeyValueToArray($imagesUploaded, 'media_type_id', 1);
                $imagesUploaded[0]['media_type_id'] = 2;
                $imagesUploaded = $this->Insert->replaceArrayValue($imagesUploaded, 'url', 'http://localhost/PROJETOS/', $ROOT_PATH);
                $imagesUploaded = $this->Insert->replaceArrayValue($imagesUploaded, 'url', '/', '\\');

                //Save Medias entities
                $mediasEntities = $this->Insert->createMassMediasEntities($imagesUploaded, $productSaved['id']);
                $this->Insert->insertMassEntities($mediasEntities, 'Medias');

                ob_start();
                var_dump($thumbUploaded['url']);
                $result = ob_get_clean();
                $file = 'C:\xampp\htdocs\PROJETOS\ShoppingTESTE\PRINT_VAR_DUMP.txt';
                file_put_contents($file, $result);
            }
        }
    }

    public function importProductsFromExcel(){
        $this->autoRender = false;

        //-------------------------------------------------------------------------

        $sheetData = $this->Excel->importExcel('Produtos.xlsx', 'Produtos');

        //-------------------------------------------------------------------------

        $productEntities = $this->Excel->transformRowIntoEntity($sheetData,
            ['A' => 'product_name', 'B' => 'quantity', 'C' => 'price'], 2, 'Products');

        //-------------------------------------------------------------------------

        $this->Insert->insertMassEntities($productEntities, 'Products');
    }

    public function exportProductsToExcel($store){
        $this->autoRender = false;

        //-------------------------------------------------------------------------

        $spreadSheetHeader =
            ['Produtos' => ['A1' => 'Nome do Produto', 'B1' => 'Quantidade',
                'C1' => 'Vendidos', 'D1' => 'Preço'],
            'Ofertas' => ['A1' => 'Nome da Oferta', 'B1' => 'Data Inicio',
                'C1' => 'Data Fim']];

        $setting = [
            'fields' => ['product_name', 'quantity', 'sold', 'price'],
            'conditions' => ['store_id' => $store],
            'order' => ['product_name' => 'ASC']
        ];
        $products = TableRegistry::get('Products')
            ->find('all', $setting)->hydrate(false)->toArray();

        $setting = [
            'fields' => ['name', 'date_start', 'date_end'],
            'conditions' => ['store_id' => $store],
            'order' => ['name' => 'ASC']
        ];
        $offers = TableRegistry::get('Offers')
            ->find('all', $setting)->hydrate(false)->toArray();

        $objPHPExcel = $this->Excel->transformEntityIntoRow($spreadSheetHeader,
            [$products, $offers], [['product_name', 'quantity', 'sold', 'price'],
                ['name', 'date_start', 'date_end']]);

        //-------------------------------------------------------------------------

        $fileName = 'Username' . '-Planilha-Produtos.xlsx';
        $fileNameWithPath = TMP . DS . 'spreadsheet' . DS . $fileName;

        $this->Excel->exportExcel($objPHPExcel, 'Excel2007', $fileNameWithPath);

        //-------------------------------------------------------------------------

        $this->response->file($fileNameWithPath, ['download' => true, 'name' => $fileName]);
        return $this->response;
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['index', 'upload', 'productTrends', 'search',
            'favoriteProducts', 'view', 'productsByStore', 'edit']);
    }

    public function isAuthorized($user = null)
    {
        // Only access action with your 'id'
        // The owner of an banner can edit and delete it
        if (in_array($this->request->action, ['edit', 'delete'])) {
            $bannerId = (int)$this->request->params['pass'][0];
            if ($this->Banners->isOwnedBy($bannerId, $user['id'])) {
                return true;
            }
        }

        return parent::isAuthorized($user);
    }

    /**
     * favoriteProducts method
     * Gera a página http://localhost:8765/products/favorite-products
     *
     * Faz as chamadas ao banco para buscar os "banners" de exibição de
     * produtos, ofertas, promoções e eventos, dados do "usuário" que serão
     * exibidos implicitamente e os produtos favoritos do usuário.
     *
     * @return void
     */
    public function favoriteProducts()
    {
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

        $this->set('username', $this->Auth->user('username'));

        //-------------------------------------------------------------------------

        $setting = [
            'fields' => ['store_name', 'id'],
            'conditions' => ['user_id' => $this->Auth->user('id')]
        ];
        $stores = TableRegistry::get('Stores')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('stores', $stores);

        //-------------------------------------------------------------------------

        //ESTE MÉTODO DEVERÁ SER REFEITO QUANDO FOR CRIADA A
        //TABELA DE FAVORITOS, ATUALMENE ESTA SOMENTE "EMULANDO"
        //UM RESULTADO ESPERADO.
        $setting = [
            'fields' => ['id', 'product_name', 'created', 'modified']
        ];
        $favoriteProducts = TableRegistry::get('Products')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('products', $favoriteProducts);

        //-------------------------------------------------------------------------

        $this->set('search', '');
    }

    public function productsByStore($storeID)
    {
        $setting = [
            'fields' => ['store_name', 'id', 'created', 'modified'],
            'conditions' => ['user_id' => $this->Auth->user('username')]
        ];
        $stores = TableRegistry::get('Stores')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('stores', $stores);

        //-------------------------------------------------------------------------

        $this->set('pageTitle', $this->Auth->User('username') . ' - Banners');

        //-------------------------------------------------------------------------

        $this->set('username', $this->Auth->user('username'));

        //-------------------------------------------------------------------------

        $this->set('userId', $this->Auth->user('id'));

        //-------------------------------------------------------------------------

        $this->set('search', '');
    }
}