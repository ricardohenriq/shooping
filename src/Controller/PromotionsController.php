<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

/**
 * Promotions Controller
 *
 * @property \App\Model\Table\PromotionsTable $Promotions
 */
class PromotionsController extends AppController
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
     * @param string|null $id Promotion id.
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
     * @param string|null $id Promotion id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {

    }

    /**
     * Delete method
     *
     * @param string|null $id Promotion id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {

    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['index']);
    }

    public function isAuthorized($user = null)
    {
        // Only access action with your 'id'
        // The owner of an banner can edit and delete it
        if (in_array($this->request->action, ['edit', 'delete', 'view'])) {
            $promotionId = (int)$this->request->params['pass'][0];
            if ($this->Banners->isOwnedBy($promotionId, $user['id'])) {
                return true;
            }
        }

        return parent::isAuthorized($user);
    }
}
