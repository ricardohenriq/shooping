<?php
namespace App\Controller\Component;

use Cake\Controller\Component;
use Cake\ORM\TableRegistry;

class SearchComponent extends Component
{
    public function listAllCategories()
    {
        $categories = TableRegistry::get('Categories');
        $query = $categories->find();
        return $query->all();
    }

    public function listAllUserTypes()
    {
        $userTypes = TableRegistry::get('UserTypes');
        $query = $userTypes->find('list');
        return $query;
    }

    public function listAllSubCategories()
    {
        $subCategories = TableRegistry::get('SubCategories');
        $query = $subCategories->find();
        return $query->all();
    }

    public function listAllSubCategoriesName()
    {
        $subCategories = TableRegistry::get('SubCategories');
        $query = $subCategories->find('list');
        return $query->all();
    }

    public function listAllBanners($bannerType, $bannersQuantity, $userId = null)
    {
        $smallBanners = TableRegistry::get('banners');
        $query = $smallBanners->find();
        $query->select(['id', 'banner_description', 'path_banner', 'url_redirect']);
        $query->where(['banner_type_id' => $bannerType]);
        if($userId === null){
            $query->where(['user_id' => $userId]);
        }
        if($bannersQuantity > 0){
            $query->limit($bannersQuantity);
        }
        return $query->all();
    }

    public function getBanner($bannerId)
    {
        $smallBanners = TableRegistry::get('banners');
        $query = $smallBanners->find();
        $query->select(['id', 'path_banner', 'banner_description', 'banner_type_id',
            'url_redirect', 'created', 'modified'])
            ->where(['id' => $bannerId]);
        return $query->first();
    }

    public function listProductsByTrend($subCategoryId, $productsQuantity,
                                        $column, $order)
    {
        $products = TableRegistry::get('products');
        $query = $products->find();
        $query->select(['product_name', 'quantity', 'sold', 'description', 'price',
            'old_price', 'thumbnail']);
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

    public function listAllProductsImages($productId, $mediaTypeId)
    {
        $productMedias = TableRegistry::get('medias');
        $query = $productMedias->find();
        $query->select(['path'])
            ->where(['product_id' => $productId])
            ->andWhere(['media_type_id' => $mediaTypeId]);
        return $query->all();
    }

    public function listOneProductImage($productId, $mediaTypeId)
    {
        $productMedias = TableRegistry::get('medias');
        $query = $productMedias->find();
        $query->select(['path'])
            ->where(['product_id' => $productId])
            ->andWhere(['media_type_id' => $mediaTypeId]);
        return $query->first();
    }

    public function createProductsPaginate($search)
    {
        $paginate = [
            'fields' => ['product_name', 'quantity', 'sold', 'description', 'price',
                'old_price', 'thumbnail'],
            'conditions' => ['product_name LIKE' => '%'.$search.'%'],
            'order' => ['price' => 'DESC'],
            'limit' => 3
        ];
        return $paginate;
    }

    public function countTotalProducts($search)
    {
        $countProducts = TableRegistry::get('products');
        $query = $countProducts->find()
            ->where(['product_name LIKE' => '%'.$search.'%']);
        return $query->count();
    }

    public function listAllProductsByStore($store, $column, $order, $productsFields){
        $products = TableRegistry::get('products');
        $query = $products->find();
        $query->select($productsFields)
            ->where(['store_id' => $store])
            ->order([$column => $order]);
        return $query->all();
    }

    public function listAllOffersByUser($user, $column, $order, $offersFields){
        $offers = TableRegistry::get('offer_banners');
        $query = $offers->find();
        $query->select($offersFields)
            ->where(['user_id' => $user])
            ->order([$column => $order]);
        return $query->all();
    }
}
