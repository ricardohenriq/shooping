<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * ProductMedias Controller
 *
 * @property \App\Model\Table\ProductMediasTable $ProductMedias
 */
class ProductMediasController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Products', 'Medias']
        ];
        $this->set('productMedias', $this->paginate($this->ProductMedias));
        $this->set('_serialize', ['productMedias']);
    }

    /**
     * View method
     *
     * @param string|null $id Product Media id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $productMedia = $this->ProductMedias->get($id, [
            'contain' => ['Products', 'Medias']
        ]);
        $this->set('productMedia', $productMedia);
        $this->set('_serialize', ['productMedia']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $productMedia = $this->ProductMedias->newEntity();
        if ($this->request->is('post')) {
            $productMedia = $this->ProductMedias->patchEntity($productMedia, $this->request->data);
            if ($this->ProductMedias->save($productMedia)) {
                $this->Flash->success(__('The product media has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The product media could not be saved. Please, try again.'));
            }
        }
        $products = $this->ProductMedias->Products->find('list', ['limit' => 200]);
        $medias = $this->ProductMedias->Medias->find('list', ['limit' => 200]);
        $this->set(compact('productMedia', 'products', 'medias'));
        $this->set('_serialize', ['productMedia']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Product Media id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $productMedia = $this->ProductMedias->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $productMedia = $this->ProductMedias->patchEntity($productMedia, $this->request->data);
            if ($this->ProductMedias->save($productMedia)) {
                $this->Flash->success(__('The product media has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The product media could not be saved. Please, try again.'));
            }
        }
        $products = $this->ProductMedias->Products->find('list', ['limit' => 200]);
        $medias = $this->ProductMedias->Medias->find('list', ['limit' => 200]);
        $this->set(compact('productMedia', 'products', 'medias'));
        $this->set('_serialize', ['productMedia']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Product Media id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $productMedia = $this->ProductMedias->get($id);
        if ($this->ProductMedias->delete($productMedia)) {
            $this->Flash->success(__('The product media has been deleted.'));
        } else {
            $this->Flash->error(__('The product media could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
