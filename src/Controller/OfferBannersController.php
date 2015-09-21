<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

/**
 * SubCategories Controller
 *
 * @property \App\Model\Table\SubCategoriesTable $SubCategories
 */
class OfferBannersController extends AppController
{
    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['myOffers', 'index']);
    }

    public function myOffers($type)
    {
        $types = ['1' => 'Active', '2' => 'Paused', '3' => 'Ended'];

        //-------------------------------------------------------------------------

        $bannerType = 2;
        $bannersQuantity = 1;
        $fullBanners = $this->Search->listAllBanners($bannerType, $bannersQuantity);
        $this->set('fullBanners', $fullBanners);

        //-------------------------------------------------------------------------

        $bannerType = 1;
        $bannersQuantity = 3;
        $smallBanners = $this->Search->listAllBanners($bannerType, $bannersQuantity);
        $this->set('smallBanners', $smallBanners);

        //-------------------------------------------------------------------------

        $newBannersQuantity = 5;
        $newBanners = $this->Search->listNewBanners($newBannersQuantity);
        $this->set('newBanners', $newBanners);

        //-------------------------------------------------------------------------

        $logged = $this->Auth->user();
        $this->set('logged', $logged);

        //-------------------------------------------------------------------------

        $userId = $this->Auth->user('id');
        $this->set('userId', $userId);

        //-------------------------------------------------------------------------

        $username = $this->Auth->user('username');
        $this->set('username', $username);

        //-------------------------------------------------------------------------

        $stores = $this->Search->listAllStoresByUser($userId);
        $this->set('stores', $stores);

        //-------------------------------------------------------------------------

        $offers = $this->Search->listAllOffersByUser($userId, 'name', 'ASC',
            ['id', 'name', 'description','created', 'modified']);
        $this->set('offers', $offers);

        //-------------------------------------------------------------------------

        $this->set('type', $types[$type]);
    }
}