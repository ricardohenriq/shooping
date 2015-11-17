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
class CustomStaticPagesController extends AppController
{
    public function index()
    {
        $categories = TableRegistry::get('Categories')
            ->find()->hydrate(false)->toArray();
        $this->set('categories', $categories);

        //-------------------------------------------------------------------------

        $subCategories = TableRegistry::get('SubCategories')
            ->find()->hydrate(false)->toArray();
        $this->set('subCategories', $subCategories);

        //-------------------------------------------------------------------------

        $subCategoriesName = TableRegistry::get('SubCategories')
            ->find('list')->hydrate(false)->toArray();
        $this->set('subCategoriesName', $subCategoriesName);

        //-------------------------------------------------------------------------

        $userTypes = TableRegistry::get('UserTypes')
            ->find('list')->hydrate(false)->toArray();
        $this->set('userTypes', $userTypes);

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

        $limit = 4;
        $setting = [
            'fields' => ['id', 'product_name', 'quantity', 'sold', 'description', 'price',
                'old_price'],
            'order' => ['sold' => 'DESC'],
            'limit' => $limit
        ];
        $productsBestSeller = TableRegistry::get('Products')
            ->find('all', $setting)->hydrate(false)->toArray();

        $productsSize = count($productsBestSeller);
        for($i = 0; $i < $productsSize ; $i++)
        {
            $setting = [
                'fields' => ['path'],
                'conditions' => ['product_id' => $productsBestSeller[$i]['id'], 'media_type_id' => 3]
            ];
            $productsBestSeller[$i]['thumb'] = TableRegistry::get('Medias')
                ->find('all', $setting)->hydrate(false)->first()['path'];
        }

        $this->set('productsBestSeller', $productsBestSeller);

        //-------------------------------------------------------------------------

        $limit = 4;
        $setting = [
            'fields' => ['id', 'product_name', 'quantity', 'sold', 'description', 'price',
                'old_price'],
            'order' => ['created' => 'DESC'],
            'limit' => $limit
        ];
        $productsNewer = TableRegistry::get('Products')
            ->find('all', $setting)->hydrate(false)->toArray();

        $productsSize = count($productsNewer);
        for($i = 0; $i < $productsSize ; $i++)
        {
            $setting = [
                'fields' => ['path'],
                'conditions' => ['product_id' => $productsNewer[$i]['id'], 'media_type_id' => 3]
            ];
            $productsNewer[$i]['thumb'] = TableRegistry::get('Medias')
                ->find('all', $setting)->hydrate(false)->first()['path'];
        }

        $this->set('productNewer', $productsNewer);

        //-------------------------------------------------------------------------

        $limit = 4;
        $setting = [
            'fields' => ['id', 'product_name', 'quantity', 'sold', 'description', 'price',
                'old_price'],
            'order' => ['visited' => 'DESC'],
            'limit' => $limit
        ];
        $productsMostPopular = TableRegistry::get('Products')
            ->find('all', $setting)->hydrate(false)->toArray();

        $productsSize = count($productsMostPopular);
        for($i = 0; $i < $productsSize ; $i++)
        {
            $setting = [
                'fields' => ['path'],
                'conditions' => ['product_id' => $productsMostPopular[$i]['id'], 'media_type_id' => 3]
            ];
            $productsMostPopular[$i]['thumb'] = TableRegistry::get('Medias')
                ->find('all', $setting)->hydrate(false)->first()['path'];
        }

        $this->set('productsMostPopular', $productsMostPopular);

        //-------------------------------------------------------------------------

        $offerBannersQuantity = 5;
        $offerBanners = $this->Search->listOfferBanners($offerBannersQuantity);
        $this->set('offerBanners', $offerBanners);

        //-------------------------------------------------------------------------

        $this->set('userId', $this->Auth->user('id'));

        //-------------------------------------------------------------------------

        $this->set('username', $this->Auth->user('username'));
    }

    public function perguntasFrequentes()
    {
        $userTypes = TableRegistry::get('UserTypes')
            ->find('list')->hydrate(false)->toArray();
        $this->set('userTypes', $userTypes);

        //-------------------------------------------------------------------------

        $this->set('userId', $this->Auth->user('id'));

        //-------------------------------------------------------------------------

        $this->set('username', $this->Auth->user('username'));
    }

    public function termosDeServico()
    {
        $userTypes = TableRegistry::get('UserTypes')
            ->find('list')->hydrate(false)->toArray();
        $this->set('userTypes', $userTypes);

        //-------------------------------------------------------------------------

        $this->set('userId', $this->Auth->user('id'));

        //-------------------------------------------------------------------------

        $this->set('username', $this->Auth->user('username'));
    }

    public function politicasDePrivacidade()
    {
        $userTypes = TableRegistry::get('UserTypes')
            ->find('list')->hydrate(false)->toArray();
        $this->set('userTypes', $userTypes);

        //-------------------------------------------------------------------------

        $this->set('userId', $this->Auth->user('id'));

        //-------------------------------------------------------------------------

        $this->set('username', $this->Auth->user('username'));
    }

    public function email()
    {
        $userTypes = TableRegistry::get('UserTypes')
            ->find('list')->hydrate(false)->toArray();
        $this->set('userTypes', $userTypes);

        //-------------------------------------------------------------------------

        $this->set('userId', $this->Auth->user('id'));

        //-------------------------------------------------------------------------

        $this->set('username', $this->Auth->user('username'));
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['index', 'perguntasFrequentes', 'email', 'politicasDePrivacidade', 'termosDeServico']);
    }
}