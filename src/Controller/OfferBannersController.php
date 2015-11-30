<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * OfferBanners Controller
 *
 * @property \App\Model\Table\OfferBannersTable $OfferBanners
 */
class OfferBannersController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Offers']
        ];
        $this->set('offerBanners', $this->paginate($this->OfferBanners));
        $this->set('_serialize', ['offerBanners']);
    }

    /**
     * View method
     *
     * @param string|null $id Offer Banner id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $offerBanner = $this->OfferBanners->get($id, [
            'contain' => ['Offers']
        ]);
        $this->set('offerBanner', $offerBanner);
        $this->set('_serialize', ['offerBanner']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $offerBanner = $this->OfferBanners->newEntity();
        if ($this->request->is('post')) {
            $offerBanner = $this->OfferBanners->patchEntity($offerBanner, $this->request->data);
            if ($this->OfferBanners->save($offerBanner)) {
                $this->Flash->success(__('The offer banner has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The offer banner could not be saved. Please, try again.'));
            }
        }
        $offers = $this->OfferBanners->Offers->find('list', ['limit' => 200]);
        $this->set(compact('offerBanner', 'offers'));
        $this->set('_serialize', ['offerBanner']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Offer Banner id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $offerBanner = $this->OfferBanners->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $offerBanner = $this->OfferBanners->patchEntity($offerBanner, $this->request->data);
            if ($this->OfferBanners->save($offerBanner)) {
                $this->Flash->success(__('The offer banner has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The offer banner could not be saved. Please, try again.'));
            }
        }
        $offers = $this->OfferBanners->Offers->find('list', ['limit' => 200]);
        $this->set(compact('offerBanner', 'offers'));
        $this->set('_serialize', ['offerBanner']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Offer Banner id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $offerBanner = $this->OfferBanners->get($id);
        if ($this->OfferBanners->delete($offerBanner)) {
            $this->Flash->success(__('The offer banner has been deleted.'));
        } else {
            $this->Flash->error(__('The offer banner could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
