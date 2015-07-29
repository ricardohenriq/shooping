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

    public function listAllSmallBanners(){
        $smallBanners = TableRegistry::get('banners');
        $query = $smallBanners->find();
        $query->select(['banner_description', 'path_banner', 'url_redirect'])
            ->where(['banner_type_id' => 1])
            ->limit(3);
        return $query;
    }

    public function listAllFullBanners(){
        $smallBanners = TableRegistry::get('banners');
        $query = $smallBanners->find();
        $query->select(['banner_description', 'path_banner', 'url_redirect'])
            ->where(['banner_type_id' => 2])
            ->limit(1);
        return $query;
    }
}
