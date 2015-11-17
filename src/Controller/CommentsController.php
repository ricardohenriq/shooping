<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;

class CommentsController extends AppController
{
    /**
     * myComments method
     * Gera a página http://localhost:8765/bookings/my-bookings
     *
     * Faz as chamadas ao banco para buscar os "banners" de exibição de
     * produtos, ofertas, promoções e eventos, dados do "usuário" que serão
     * exibidos implicitamente e lojas "stores" e reservas "bookings" do usuário
     *
     * @param string $answered 0  - Comentário não respondido | 1 -
     * Comentário respondido.
     * @return void
     */
    public function myComments($answered)
    {
        $setting = [
            'fields' => ['id', 'banner_description', 'path_banner', 'url_redirect'],
            'conditions' => ['banner_type_id' => 2],
            'limit' => 1
        ];
        $fullBanners = TableRegistry::get('Banners')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('fullBanners', $fullBanners);

        //-------------------------------------------------------------------------

        $setting = [
            'fields' => ['id', 'banner_description', 'path_banner', 'url_redirect'],
            'conditions' => ['banner_type_id' => 1],
            'limit' => 3
        ];
        $smallBanners = TableRegistry::get('Banners')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('smallBanners', $smallBanners);

        //-------------------------------------------------------------------------

        $this->set('userId', $this->Auth->user('id'));

        //-------------------------------------------------------------------------

        $this->set('username', $this->Auth->user('username'));

        //-------------------------------------------------------------------------

        $setting = [
            'fields' => ['store_name', 'id'],
            'conditions' => ['user_id' => $this->Auth->user('id')]
        ];
        $stores = TableRegistry::get('Stores')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('stores', $stores);

        //-------------------------------------------------------------------------

        $setting = [
            'fields' => ['id', 'comment_text', 'product_id',
                'answered', 'created'],
            'conditions' => ['user_id' => $this->Auth->user('id'),
                    'comment_type_id' => 1,
                    'answered' => $answered
                ]
        ];
        $comments = TableRegistry::get('Comments')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('comments', $comments);

        //-------------------------------------------------------------------------

        $answeredValues = ['1' => 'Não Respondidos', '2' => 'Respondidos'];
        $this->set('answered', $answeredValues[$answered]);
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['myComments', 'index']);
    }
}