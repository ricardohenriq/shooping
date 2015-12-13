<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;

/**
 * SubCategories Controller
 *
 * @property \App\Model\Table\SubCategoriesTable $SubCategories
 */
class SubCategoriesController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {

    }

    /**
     * View method
     *
     * @param string|null $id Sub Category id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {

    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {

    }

    /**
     * Edit method
     *
     * @param string|null $id Sub Category id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {

    }

    /**
     * Delete method
     *
     * @param string|null $id Sub Category id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {

    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['favoriteSubcategories', 'index']);
    }

    public function favoriteSubcategories()
    {
        $this->loadModel('Banners');
        $fullBanners = $this->Banners->full();
        $smallBanners = $this->Banners->small();

        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');

        $this->loadModel('Stores');
        $stores = $this->Stores->myStores($userId);

        $favoriteSubcategories = $this->SubCategories->getFavoriteSubcategories($userId);

        $this->set(compact('fullBanners', 'smallBanners', 'userId', 'username',
            'stores', 'favoriteSubcategories'));
    }
}