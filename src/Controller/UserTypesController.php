<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Core\Exception\Exception;
use Cake\Datasource\Exception\RecordNotFoundException;
use App\Exceptions\NotAccessException;

/**
 * UserTypes Controller
 *
 * @property \App\Model\Table\UserTypesTable $UserTypes
 */
class UserTypesController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('userTypes', $this->paginate($this->UserTypes));
        $this->set('_serialize', ['userTypes']);
    }

    /**
     * View method
     *
     * @param string|null $id User Type id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        try {
            $userType = $this->UserTypes->get($id, [
                'contain' => ['Users']
            ]);
            $this->set('userType', $userType);
            $this->set('_serialize', ['userType']);
        }catch(RecordNotFoundException $e){
            $this->Flash->error(__('Tipo de Usuário não encontrado'));
            return $this->redirect(['action' => 'index']);
        }catch(NotAccessException $e){
            $this->Flash->error(__('Não foi possivel o acesso'));
            return $this->redirect(['action' => 'index']);
        }catch(Exception $e){
            $this->Flash->error(__('Ocorreu um erro'));
            return $this->redirect(['action' => 'index']);
        }
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $userType = $this->UserTypes->newEntity();
        if ($this->request->is('post')) {
            $userType = $this->UserTypes->patchEntity($userType, $this->request->data);
            if ($this->UserTypes->save($userType)) {
                $this->Flash->success(__('The user type has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The user type could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('userType'));
        $this->set('_serialize', ['userType']);
    }

    /**
     * Edit method
     *
     * @param string|null $id User Type id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $userType = $this->UserTypes->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $userType = $this->UserTypes->patchEntity($userType, $this->request->data);
            if ($this->UserTypes->save($userType)) {
                $this->Flash->success(__('The user type has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The user type could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('userType'));
        $this->set('_serialize', ['userType']);
    }

    /**
     * Delete method
     *
     * @param string|null $id User Type id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $userType = $this->UserTypes->get($id);
        if ($this->UserTypes->delete($userType)) {
            $this->Flash->success(__('The user type has been deleted.'));
        } else {
            $this->Flash->error(__('The user type could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
