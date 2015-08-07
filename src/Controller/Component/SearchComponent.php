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
        $query->select(['product_name', 'quantity', 'sold', 'description', 'price', 'old_price', 'thumbnail']);
            if ($subCategoryId > 0) {
                $query = $query->where(['sub_category_id' => $subCategoryId]);
            }
            $query = $query->order([$column => $order]);
            $query = $query->limit($productsQuantity);
        return $query->all();
    }

    public function listOfferBanners($offerBannersQuantity)
    {
        $offerBanners = TableRegistry::get('offer_banners');
        $query = $offerBanners->find();
        $query->select(['path_banner', 'date_start', 'date_end', 'name', 'description'])
            ->where(['date_start <=' => new \DateTime('today')])
            ->andWhere(['date_end >' => new \DateTime('tomorrow')])
            ->limit($offerBannersQuantity);
        return $query->all();
    }

    public function listNewBanners($newBannersQuantity)
    {
        $newBanners = TableRegistry::get('new_banners');
        $query = $newBanners->find();
        $query->select(['path_banner', 'date_start', 'date_end', 'name', 'description'])
            ->where(['date_start <=' => new \DateTime('today')])
            ->andWhere(['date_end >' => new \DateTime('tomorrow')])
            ->limit($newBannersQuantity);
        return $query->all();
    }

    public function listAllProductsImages($productId)
    {
        $productMedias = TableRegistry::get('medias');
        $query = $productMedias->find();
        $query->select(['media_type_id', 'path'])
            ->where(['product_id' => $productId]);
        return $query->all();
    }
}
