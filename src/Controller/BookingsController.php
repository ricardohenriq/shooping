<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

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

    public function myBookings(){
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

        $bookings = $this->Search->listAllBookingsByUser($userId);
        $this->set('bookings', $bookings);
    }
}