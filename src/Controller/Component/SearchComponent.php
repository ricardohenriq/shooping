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
}
