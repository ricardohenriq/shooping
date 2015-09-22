<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

class CommentsController extends AppController
{
    public function myComments($answered){

        $answeredValues = ['1' => 'Não Respondidos', '2' => 'Respondidos'];

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

        $stores = $this->Search->listAllStoresByUser($this->Auth->user('id'));
        $this->set('stores', $stores);

        //-------------------------------------------------------------------------

        $type = 1;

        $comments = $this->Search->listCommentsByUser($userId, $type, $answered);
        $this->set('comments', $comments);

        //-------------------------------------------------------------------------

        $this->set('answered', $answeredValues[$answered]);
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['myComments', 'index']);
    }
}