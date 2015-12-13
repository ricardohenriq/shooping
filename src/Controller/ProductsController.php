<?php
namespace App\Controller;

use Cake\Event\Event;
use Cake\ORM\TableRegistry;

/**
 * Products Controller
 *
 * @property \App\Model\Table\ProductsTable $Products
 */
class ProductsController extends AppController
{
	public function initialize()
    {
        parent::initialize();
        $this->loadComponent('RequestHandler');
        $this->loadComponent('Paginator');
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
            $product = $this->Products->getProductRecursive($id);

            $this->loadModel('Banners');
            $fullBanners = $this->Banners->full();

            $this->loadModel('Medias');
            $productImages = $this->Medias->getProductImages($id);
            $productMainImage = $this->Medias->getProductMainImage($id);

            $userId = $this->Auth->user('id');
            $username = $this->Auth->user('username');
            $pageTitle = $product['product_name'] . ' - Stores';

            $this->set(compact('fullBanners', 'userId', 'username', 'pageTitle',
                'productImages', 'productMainImage', 'product'));
        }
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
        $pageTitle = 'Product';
        $username = $this->Auth->user('username');
        $userId = $this->Auth->user('id');

        $this->loadModel('Stores');
        $stores = $this->Stores->myStores($userId);

        $this->set(compact('pageTitle', 'username', 'userId', 'stores'));
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
    public function productTrends($subCategoryId)
    {
        if($this->request->is('get'))
        {
            $products = $this->Products->getProductTrendByColumn('sold', $subCategoryId);
            $this->set('products', $products);
            $this->set('_serialize', 'products');
        }
    }

    public function search()
    {
        if($this->request->is('get'))
        {
            $search = $this->request->query['search'];

            $this->paginate = [
                'conditions' => ['product_name LIKE' => '%' . $search . '%'],
                'maxLimit' => 10,
                'contain' => ['Medias' => function($q){
                    return $q->select(['path', 'product_id'])
                        ->where(['media_type_id' => 3]);
                }]
            ];
            $products = $this->paginate($this->Products);

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

	public function add()
	{		
        if ($this->request->is('post')) {

            //Save Product entity
            $product = $this->Products->newEntity();
            $product = $this->Products->patchEntity($product, $this->request->data);
            $product->sub_category_id = 18;
            $product->store_id = 1;
            $productSaved = $this->Products->save($product);

            /*if($productSaved)
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
                $file = 'C:\xampp\htdocs\PROJETOS\Shopping\PRINT_VAR_DUMP.txt';
                file_put_contents($file, $result);
            }*/
        }
    }

    public function exportProductsToExcel($storeId)
    {
        $this->autoRender = false;

        $spreadSheetHeader = [
            'Produtos' => ['A1' => 'Nome do Produto', 'B1' => 'Quantidade',
                'C1' => 'Vendidos', 'D1' => 'Preço'],
            'Ofertas' => ['A1' => 'Nome da Oferta', 'B1' => 'Data Inicio',
                'C1' => 'Data Fim']
        ];

        $products = $this->Products->getProducts($storeId);

        $this->loadModel('Offers');
        $offers = $this->Offers->getOffers($storeId);

        $objPHPExcel = $this->Excel->transformEntityIntoRow($spreadSheetHeader,
            [$products, $offers], [['product_name', 'quantity', 'sold', 'price'],
                ['name', 'date_start', 'date_end']]);

        $fileName = 'Username' . '-Planilha-Produtos.xlsx';
        $fileNameWithPath = TMP . DS . 'spreadsheet' . DS . $fileName;

        $this->Excel->exportExcel($objPHPExcel, 'Excel2007', $fileNameWithPath);

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
        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');

        $this->loadModel('Banners');
        $fullBanners = $this->Banners->full();
        $smallBanners = $this->Banners->small();

        $this->loadModel('Stores');
        $stores = $this->Stores->myStores($userId);

        $products = $this->Products->getFavoriteProducts($userId);

        $this->set(compact('userId', 'username', 'fullBanners', 'smallBanners',
            'stores', 'products'));
    }

    public function productsByStore($storeID)
    {
        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');
        $pageTitle = 'Store';

        $products = $this->Products->getProductByStore(1);

        $this->loadModel('Stores');
        $stores = $this->Stores->myStores($userId);

        $this->loadModel('Banners');
        $fullBanners = $this->Banners->full();
        $smallBanners = $this->Banners->small();

        $this->set(compact('fullBanners', 'smallBanners', 'userId', 'username',
            'products', 'pageTitle', 'stores'));
    }
}