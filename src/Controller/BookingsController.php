<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;

/**
 * Bookings Controller
 *
 * @property \App\Model\Table\BookingsTable $Bookings
 */
class BookingsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Products', 'Users']
        ];
        $this->set('bookings', $this->paginate($this->Bookings));
        $this->set('_serialize', ['bookings']);
    }

    /**
     * View method
     *
     * @param string|null $id Booking id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $booking = $this->Bookings->get($id, [
            'contain' => ['Products', 'Users']
        ]);
        $this->set('booking', $booking);
        $this->set('_serialize', ['booking']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $booking = $this->Bookings->newEntity();
        if ($this->request->is('post')) {
            $booking = $this->Bookings->patchEntity($booking, $this->request->data);
            if ($this->Bookings->save($booking)) {
                $this->Flash->success(__('The booking has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The booking could not be saved. Please, try again.'));
            }
        }
        $products = $this->Bookings->Products->find('list', ['limit' => 200]);
        $users = $this->Bookings->Users->find('list', ['limit' => 200]);
        $this->set(compact('booking', 'products', 'users'));
        $this->set('_serialize', ['booking']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Booking id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $booking = $this->Bookings->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $booking = $this->Bookings->patchEntity($booking, $this->request->data);
            if ($this->Bookings->save($booking)) {
                $this->Flash->success(__('The booking has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The booking could not be saved. Please, try again.'));
            }
        }
        $products = $this->Bookings->Products->find('list', ['limit' => 200]);
        $users = $this->Bookings->Users->find('list', ['limit' => 200]);
        $this->set(compact('booking', 'products', 'users'));
        $this->set('_serialize', ['booking']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Booking id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $booking = $this->Bookings->get($id);
        if ($this->Bookings->delete($booking)) {
            $this->Flash->success(__('The booking has been deleted.'));
        } else {
            $this->Flash->error(__('The booking could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['index', 'myBookings']);
    }

    public function isAuthorized($user = null)
    {
        // Only access action with your 'id'
        // The owner of an banner can edit and delete it
        if (in_array($this->request->action, ['edit', 'delete', 'view'])) {
            $bookingId = (int)$this->request->params['pass'][0];
            if ($this->Bookings->isOwnedBy($bookingId, $user['id'])) {
                return true;
            }
        }

        return parent::isAuthorized($user);
    }

    /**
     * myBookings method
     * Gera a página http://localhost:8765/bookings/my-bookings
     *
     * Faz as chamadas ao banco para buscar os "banners" de exibição de
     * produtos, ofertas, promoções e eventos, dados do "usuário" que serão
     * exibidos implicitamente e lojas "stores" e reservas "bookings" do usuário
     *
     * @return void
     */
    public function myBookings()
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
            'fields' => ['id', 'product_id', 'quantity'],
            'conditions' => ['user_id' => $this->Auth->user('id')]
        ];
        $bookings = TableRegistry::get('Bookings')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('bookings', $bookings);
    }
}