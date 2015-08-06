<?php
namespace App\Controller;

use App\Controller\AppController;

class RetrieveDatasController extends AppController
{
    public function retrieveProducts()
    {
        $this->autoRender = false;
        //if($this->request->is('post'))
        //{
            echo file_get_contents('http://localhost:8765/json/products.json');
        //}
    }
}