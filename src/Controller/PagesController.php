<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link      http://cakephp.org CakePHP(tm) Project
 * @since     0.2.9
 * @license   http://www.opensource.org/licenses/mit-license.php MIT License
 */
namespace App\Controller;

use Cake\Core\Configure;
use Cake\Network\Exception\NotFoundException;
use Cake\ORM\TableRegistry;
use Cake\View\Exception\MissingTemplateException;

/**
 * Static content controller
 *
 * This controller will render views from Template/Pages/
 *
 * @link http://book.cakephp.org/3.0/en/controllers/pages-controller.html
 */
class PagesController extends AppController
{
    /**
     * Displays a view
     *
     * @return void|\Cake\Network\Response
     * @throws \Cake\Network\Exception\NotFoundException When the view file could not
     *   be found or \Cake\View\Exception\MissingTemplateException in debug mode.
     */
    public function display()
    {
        // Cria um array com todos os argumentos passados para a função.
        $path = func_get_args();

        // Conta quantos argumentos foram passados para a função.
        $count = count($path);

        // Por meio de um componente (Search) eu listo todas as 'categories'.
        $categories = $this->Search->listAllCategories();

        // Atribuo as categorias resgatadas do BD ($categories)
        // e atribuo a variavel 'categories' da view.
        $this->set('categories', $categories);

        $subCategories = $this->Search->listAllSubCategories();
        $this->set('subCategories', $subCategories);

        $userTypes = $this->Search->listAllUserTypes();
        $this->set('userTypes', $userTypes);

        $bannerType = 1;
        $bannersQuantity = 3;
        $smallBanners = $this->Search->listAllBanners($bannerType, $bannersQuantity);
        $this->set('smallBanners', $smallBanners);

        $bannerType = 2;
        $bannersQuantity = 1;
        $fullBanners = $this->Search->listAllBanners($bannerType, $bannersQuantity);
        $this->set('fullBanners', $fullBanners);

        $productsQuantity = 4;
        $order = 'DESC';

        $subCategoryId = 0;
        $column = 'sold';
        $productsBestSeller = $this->Search->listProductsByTrend($subCategoryId, $productsQuantity, $column, $order);
        $this->set('productsBestSeller', $productsBestSeller);

        $subCategoryId = 2;
        $column = 'created';
        $productNewer = $this->Search->listProductsByTrend($subCategoryId, $productsQuantity, $column, $order);
        $this->set('productNewer', $productNewer);

        $subCategoryId = 2;
        $column = 'visited';
        $productsMostPopular = $this->Search->listProductsByTrend($subCategoryId, $productsQuantity, $column, $order);
        $this->set('productsMostPopular', $productsMostPopular);

        $newBannersQuantity = 5;
        $newBanners = $this->Search->listNewBanners($newBannersQuantity);
        $this->set('newBanners', $newBanners);

        $offerBannersQuantity = 5;
        $offerBanners = $this->Search->listOfferBanners($offerBannersQuantity);
        $this->set('offerBanners', $offerBanners);

        if($this->Auth->user())
        {
            $this->set('logged',true);
        }else
        {
            $this->set('logged',false);
        }

        if (!$count) {
            return $this->redirect('/');
        }
        $page = $subpage = null;

        if (!empty($path[0])) {
            $page = $path[0];
        }
        if (!empty($path[1])) {
            $subpage = $path[1];
        }
        $this->set(compact('page', 'subpage'));

        try {
            $this->render(implode('/', $path));
        } catch (MissingTemplateException $e) {
            if (Configure::read('debug')) {
                throw $e;
            }
            throw new NotFoundException();
        }
    }
}
