<?php
namespace App\Controller\Component;

use Cake\Controller\Component;
use Cake\ORM\TableRegistry;

class SearchComponent extends Component
{
    public function listAllCategories()
    {
        $articles = TableRegistry::get('Categories');
        $query = $articles->find();
        return $query;
    }
}
