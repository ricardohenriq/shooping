<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * ProductFeatures Controller
 *
 * @property \App\Model\Table\ProductFeaturesTable $ProductFeatures
 */
class ProductFeaturesController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Features', 'Products']
        ];
        $this->set('productFeatures', $this->paginate($this->ProductFeatures));
        $this->set('_serialize', ['productFeatures']);
    }

    /**
     * View method
     *
     * @param string|null $id Product Feature id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $productFeature = $this->ProductFeatures->get($id, [
            'contain' => ['Features', 'Products']
        ]);
        $this->set('productFeature', $productFeature);
        $this->set('_serialize', ['productFeature']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $productFeature = $this->ProductFeatures->newEntity();
        if ($this->request->is('post')) {
            $productFeature = $this->ProductFeatures->patchEntity($productFeature, $this->request->data);
            if ($this->ProductFeatures->save($productFeature)) {
                $this->Flash->success(__('The product feature has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The product feature could not be saved. Please, try again.'));
            }
        }
        $features = $this->ProductFeatures->Features->find('list', ['limit' => 200]);
        $products = $this->ProductFeatures->Products->find('list', ['limit' => 200]);
        $this->set(compact('productFeature', 'features', 'products'));
        $this->set('_serialize', ['productFeature']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Product Feature id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $productFeature = $this->ProductFeatures->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $productFeature = $this->ProductFeatures->patchEntity($productFeature, $this->request->data);
            if ($this->ProductFeatures->save($productFeature)) {
                $this->Flash->success(__('The product feature has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The product feature could not be saved. Please, try again.'));
            }
        }
        $features = $this->ProductFeatures->Features->find('list', ['limit' => 200]);
        $products = $this->ProductFeatures->Products->find('list', ['limit' => 200]);
        $this->set(compact('productFeature', 'features', 'products'));
        $this->set('_serialize', ['productFeature']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Product Feature id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $productFeature = $this->ProductFeatures->get($id);
        if ($this->ProductFeatures->delete($productFeature)) {
            $this->Flash->success(__('The product feature has been deleted.'));
        } else {
            $this->Flash->error(__('The product feature could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['index']);
    }

    public function isAuthorized($user = null)
    {
        return parent::isAuthorized($user);
    }
}
