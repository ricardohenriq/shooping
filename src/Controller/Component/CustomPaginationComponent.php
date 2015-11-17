<?php
namespace App\Controller\Component;

use Cake\Controller\Component;

class CustomPaginationComponent extends Component
{
    public function getCurrentPage()
    {
        if($this->request->query['page'] > 1)
        {
            return $this->request->query['page'];
        }else
        {
            return 1;
        }
    }

    public function getNumPaginas($total, $productsView)
    {
        return ceil($total / $productsView);
    }

    public function calcStartEndPaginator($products, $pageNumber, $productsView)
    {
        if($pageNumber <= 1)
        {
            $startProducts = 1;
        }else
        {
            $startProducts = ($pageNumber - 1) * $productsView + 1;
        }

        $endProducts = count($products) + $startProducts - 1;

        return ['startProducts' => $startProducts, 'endProducts' => $endProducts];
    }

}