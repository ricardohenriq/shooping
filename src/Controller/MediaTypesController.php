<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * MediaTypes Controller
 *
 * @property \App\Model\Table\MediaTypesTable $MediaTypes
 */
class MediaTypesController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('mediaTypes', $this->paginate($this->MediaTypes));
        $this->set('_serialize', ['mediaTypes']);
    }

    /**
     * View method
     *
     * @param string|null $id Media Type id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $mediaType = $this->MediaTypes->get($id, [
            'contain' => ['Medias']
        ]);
        $this->set('mediaType', $mediaType);
        $this->set('_serialize', ['mediaType']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $mediaType = $this->MediaTypes->newEntity();
        if ($this->request->is('post')) {
            $mediaType = $this->MediaTypes->patchEntity($mediaType, $this->request->data);
            if ($this->MediaTypes->save($mediaType)) {
                $this->Flash->success(__('The media type has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The media type could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('mediaType'));
        $this->set('_serialize', ['mediaType']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Media Type id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $mediaType = $this->MediaTypes->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $mediaType = $this->MediaTypes->patchEntity($mediaType, $this->request->data);
            if ($this->MediaTypes->save($mediaType)) {
                $this->Flash->success(__('The media type has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The media type could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('mediaType'));
        $this->set('_serialize', ['mediaType']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Media Type id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $mediaType = $this->MediaTypes->get($id);
        if ($this->MediaTypes->delete($mediaType)) {
            $this->Flash->success(__('The media type has been deleted.'));
        } else {
            $this->Flash->error(__('The media type could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
