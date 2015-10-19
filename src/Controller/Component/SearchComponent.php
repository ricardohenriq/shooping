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
        $smallBanners = TableRegistry::get('Banners');
        $query = $smallBanners->find();
        $query->select(['id', 'banner_description', 'path_banner', 'url_redirect']);
        $query->where(['banner_type_id' => $bannerType]);
        if($userId !== null){
            $query->where(['user_id' => $userId]);
        }
        if($bannersQuantity > 0){
            $query->limit($bannersQuantity);
        }
        return $query->all();
    }

    public function getBanner($bannerId)
    {
        $smallBanners = TableRegistry::get('Banners');
        $query = $smallBanners->find();
        $query->select(['id', 'path_banner', 'banner_description', 'banner_type_id',
            'url_redirect', 'created', 'modified'])
            ->where(['id' => $bannerId]);
        return $query->first();
    }

    public function listProductsByTrend($subCategoryId, $productsQuantity,
                                        $column, $order)
    {
        $products = TableRegistry::get('Products');
        $query = $products->find();
        $query->select(['product_name', 'quantity', 'sold', 'description', 'price',
            'old_price']);
            //'old_price', 'thumbnail']);
            if ($subCategoryId > 0) {
                $query = $query->where(['sub_category_id' => $subCategoryId]);
            }
            $query = $query->order([$column => $order]);
            $query = $query->limit($productsQuantity);
        return $query->all();
    }

    public function listOfferBanners($offerBannersQuantity)
    {
        $offerBanners = TableRegistry::get('OfferBanners');
        $query = $offerBanners->find();
        $query->select(['path_banner', 'date_start', 'date_end', 'name', 'description'])
            ->where(['date_start <=' => new \DateTime('today')])
            ->andWhere(['date_end >' => new \DateTime('tomorrow')])
            ->limit($offerBannersQuantity);
        return $query->all();
    }

    public function listNewBanners($newBannersQuantity)
    {
        $newBanners = TableRegistry::get('NewBanners');
        $query = $newBanners->find();
        $query->select(['path_banner', 'date_start', 'date_end', 'name', 'description'])
            ->where(['date_start <=' => new \DateTime('today')])
            ->andWhere(['date_end >' => new \DateTime('tomorrow')])
            ->limit($newBannersQuantity);
        return $query->all();
    }

    public function listAllProductsImages($productId, $mediaTypeId)
    {
        $productMedias = TableRegistry::get('Medias');
        $query = $productMedias->find();
        $query->select(['path'])
            ->where(['product_id' => $productId])
            ->andWhere(['media_type_id' => $mediaTypeId]);
        return $query->all();
    }

    public function listOneProductImage($productId, $mediaTypeId)
    {
        $productMedias = TableRegistry::get('Medias');
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
                'old_price'],
                //'old_price', 'thumbnail'],
            'conditions' => ['product_name LIKE' => '%'.$search.'%'],
            'order' => ['price' => 'DESC'],
            'limit' => 3
        ];
        return $paginate;
    }

    public function countTotalProducts($search)
    {
        $countProducts = TableRegistry::get('Products');
        $query = $countProducts->find()
            ->where(['product_name LIKE' => '%'.$search.'%']);
        return $query->count();
    }

    public function listAllProductsByStore($store, $column, $order, $productsFields){
        $products = TableRegistry::get('Products');
        $query = $products->find();
        $query->select($productsFields)
            ->where(['store_id' => $store])
            ->order([$column => $order]);
        return $query->all();
    }

    public function listAllOffersByUser($user, $column, $order, $offersFields, $status = false){
        $offers = TableRegistry::get('OfferBanners');
        $query = $offers->find();
        $query->select($offersFields);
        $query->where(['user_id' => $user]);
        if($status !== false){
            $query->andWhere(['status' => $status]);
        }
        $query->order([$column => $order]);
        return $query->all();
    }

    public function listAllStoresByUser($userId){
        $query = TableRegistry::get('Stores')->find('all');
        $query->select(['store_name', 'id', 'created', 'modified'])
            ->where(['user_id' => $userId]);
        return $query->hydrate(false)->toArray();
    }

    public function listAllBookingsByUser($userId){
        $query = TableRegistry::get('Bookings')->find('all');
        $query->select(['id', 'product_id', 'quantity', 'created', 'modified'])
            ->where(['user_id' => $userId]);
        return $query->hydrate(false)->toArray();
    }

    public function listAllFavoriteProductsByUser($userId){
        //ESTE MÉTODO DEVERÁ SER REFEITO QUANDO FOR CRIADA A
        //TABELA DE FAVORITOS, ATUALMENE ESTA SOMENTE "EMULANDO"
        //UM RESULTADO ESPERADO.
        $query = TableRegistry::get('Products')->find('all');
        $query->select(['id', 'product_name', 'created', 'modified']);
        return $query->hydrate(false)->toArray();
    }

    public function listAllFavoriteStoresByUser($userId){
        //ESTE MÉTODO DEVERÁ SER REFEITO QUANDO FOR CRIADA A
        //TABELA DE FAVORITOS, ATUALMENE ESTA SOMENTE "EMULANDO"
        //UM RESULTADO ESPERADO.
        $query = TableRegistry::get('Stores')->find('all');
        $query->select(['id', 'store_name', 'created', 'modified']);
        return $query->hydrate(false)->toArray();
    }

    public function listAllCommentsByUser($userId){
        //ESTE MÉTODO DEVERÁ SER REFEITO QUANDO FOR CRIADA A
        //TABELA DE FAVORITOS, ATUALMENE ESTA SOMENTE "EMULANDO"
        //UM RESULTADO ESPERADO.

    }

    public function listAllFavoriteSubcategoriesByUser($userId){
        //ESTE MÉTODO DEVERÁ SER REFEITO QUANDO FOR CRIADA A
        //TABELA DE FAVORITOS, ATUALMENE ESTA SOMENTE "EMULANDO"
        //UM RESULTADO ESPERADO.
        $query = TableRegistry::get('SubCategories')->find('all');
        $query->select(['id', 'sub_category_name', 'created', 'modified']);
        return $query->hydrate(false)->toArray();
    }

    public function countCommentsByUser($userId, $type, $answered){
        $query = TableRegistry::get('Comments')->find('all');
        $query->where(['user_id' => $userId])
            ->andWhere(['comment_type_id' => $type])
            ->andWhere(['answered' => $answered]);
        return $query->count();
    }

    public function listCommentsByUser($userId, $type, $answered){
        $query = TableRegistry::get('Comments')->find('all');
        $query->select(['id', 'comment_text', 'product_id',
            'answered', 'created'])
            ->where(['user_id' => $userId])
            ->andWhere(['comment_type_id' => $type])
            ->andWhere(['answered' => $answered]);
        return $query->hydrate(false)->toArray();
    }

    public function countBookingsByUser($userId){
        $query = TableRegistry::get('Bookings')->find('all');
        $query->where(['user_id' => $userId]);
        return $query->count();
    }

    public function countOffersByUser($user, $status = false){
        $query = TableRegistry::get('OfferBanners')->find('all');
        $query->where(['user_id' => $user]);
        if($status !== false){
            $query->andWhere(['status' => $status]);
        }
        return $query->count();
    }
}