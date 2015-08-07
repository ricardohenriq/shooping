<?php
namespace App\Controller\Component;

use Cake\Controller\Component;

class UrlComponent extends Component
{
    public function createUrl($controller, $action,
                              $querystringParameter, $productsViewOptions)
    {
        // Variável necessária para armazenar o estado inicial da entrada no
        // $_GET para que ao final possa atribuir o valor inicial para o
        // $_GET para que quando outro método chamar este o $_GET esteje em
        // seu estado inicial.
        @$parameterStorage = $_GET[$querystringParameter];
        $urls = [];

        foreach($productsViewOptions as $productsViewOption)
        {
            $_GET[$querystringParameter] = $productsViewOption;
            $urls[] = '/' . $controller . '/' . $action . '?' . http_build_query($_GET);
        }

        @$_GET[$querystringParameter] = $parameterStorage;

        return $urls;
    }

    public function getUrlWithoutParam($controller, $action, $param)
    {
        unset($_GET[$param]);
        return '/' . $controller . '/' . $action . '?' . http_build_query($_GET);
    }

    public function getPreviousNextPage($pagina)
    {
        $previousPage = $pagina - 1;
        $nextPage = $pagina + 1;

        return ['previousPage' => $previousPage, 'nextPage' => $nextPage];
    }

    public function getQuerystringKey($key)
    {
        if (array_key_exists($key, $this->request->query))
        {
            return $this->request->query[$key];
        }else
        {
            return 3;
        }
    }

    public function getQuerystringKeyWithArray($key, $associativeArray)
    {
        if (array_key_exists($key, $this->request->query))
        {
            return $associativeArray[$this->request->query[$key]];
        }else
        {
            return 'Mais Visitados';
        }
    }
}