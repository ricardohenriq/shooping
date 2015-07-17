<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * PromotionProducts Controller
 *
 * @property \App\Model\Table\PromotionProductsTable $PromotionProducts
 */
class PromotionProductsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Products', 'Promotions']
        ];
        $this->set('promotionProducts', $this->paginate($this->PromotionProducts));
        $this->set('_serialize', ['promotionProducts']);
    }

    /**
     * View method
     *
     * @param string|null $id Promotion Product id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $promotionProduct = $this->PromotionProducts->get($id, [
            'contain' => ['Products', 'Promotions']
        ]);
        $this->set('promotionProduct', $promotionProduct);
        $this->set('_serialize', ['promotionProduct']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $promotionProduct = $this->PromotionProducts->newEntity();
        if ($this->request->is('post')) {
            $promotionProduct = $this->PromotionProducts->patchEntity($promotionProduct, $this->request->data);
            if ($this->PromotionProducts->save($promotionProduct)) {
                $this->Flash->success(__('The promotion product has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The promotion product could not be saved. Please, try again.'));
            }
        }
        $products = $this->PromotionProducts->Products->find('list', ['limit' => 200]);
        $promotions = $this->PromotionProducts->Promotions->find('list', ['limit' => 200]);
        $this->set(compact('promotionProduct', 'products', 'promotions'));
        $this->set('_serialize', ['promotionProduct']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Promotion Product id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $promotionProduct = $this->PromotionProducts->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $promotionProduct = $this->PromotionProducts->patchEntity($promotionProduct, $this->request->data);
            if ($this->PromotionProducts->save($promotionProduct)) {
                $this->Flash->success(__('The promotion product has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The promotion product could not be saved. Please, try again.'));
            }
        }
        $products = $this->PromotionProducts->Products->find('list', ['limit' => 200]);
        $promotions = $this->PromotionProducts->Promotions->find('list', ['limit' => 200]);
        $this->set(compact('promotionProduct', 'products', 'promotions'));
        $this->set('_serialize', ['promotionProduct']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Promotion Product id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $promotionProduct = $this->PromotionProducts->get($id);
        if ($this->PromotionProducts->delete($promotionProduct)) {
            $this->Flash->success(__('The promotion product has been deleted.'));
        } else {
            $this->Flash->error(__('The promotion product could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
