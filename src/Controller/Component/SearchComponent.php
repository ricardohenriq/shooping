<?php
namespace App\Controller\Component;

use Cake\Controller\Component;
use Cake\ORM\TableRegistry;

class SearchComponent extends Component
{
    public function listAllCategories()
    {
        $categories = TableRegistry::get('Categories');
        $query = $categories->find('list');
        return $query;
    }

    public function listAllUserTypes()
    {
        $userTypes = TableRegistry::get('UserTypes');
        $query = $userTypes->find('list');
        return $query;
    }

    /*public function listAllSubCategories()
    {
        $subCategories = TableRegistry::get('SubCategories');
        $query = $subCategories->find('all', ['contain' => ['Categories']]);
        return $query;
    }*/

    public function listAllSubCategories()
    {
        $subCategories = TableRegistry::get('SubCategories');
        $query = $subCategories->find('list');
        return $query;
    }

    public function listAllBanners($bannerType, $bannersQuantity)
    {
        $smallBanners = TableRegistry::get('banners');
        $query = $smallBanners->find();
        $query->select(['banner_description', 'path_banner', 'url_redirect'])
            ->where(['banner_type_id' => $bannerType])
            ->limit($bannersQuantity);
        return $query;
    }

    public function listProductsByTrend($subCategoryId, $productsQuantity, $column, $order)
    {
        $products = TableRegistry::get('products');
        $query = $products->find();
        $query->select(['product_name', 'quantity', 'sold', 'description', 'price', 'old_price', 'thumbnail'])
            ->where(['sub_category_id' => $subCategoryId])
            ->order([$column => $order])
            ->limit($productsQuantity);
        return $query;
    }

    public function listOffers()
    {

    }

    public function listNews()
    {

    }
}
