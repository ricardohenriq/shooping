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
        $this->paginate = [
            'contain' => ['Categories']
        ];
        $this->set('subCategories', $this->paginate($this->SubCategories));
        $this->set('_serialize', ['subCategories']);
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
        $subCategory = $this->SubCategories->get($id, [
            'contain' => ['Categories']
        ]);
        $this->set('subCategory', $subCategory);
        $this->set('_serialize', ['subCategory']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $subCategory = $this->SubCategories->newEntity();
        if ($this->request->is('post')) {
            $subCategory = $this->SubCategories->patchEntity($subCategory, $this->request->data);
            if ($this->SubCategories->save($subCategory)) {
                $this->Flash->success(__('The sub category has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The sub category could not be saved. Please, try again.'));
            }
        }
        $categories = $this->SubCategories->Categories->find('list', ['limit' => 200]);
        $this->set(compact('subCategory', 'categories'));
        $this->set('_serialize', ['subCategory']);
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
        $subCategory = $this->SubCategories->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $subCategory = $this->SubCategories->patchEntity($subCategory, $this->request->data);
            if ($this->SubCategories->save($subCategory)) {
                $this->Flash->success(__('The sub category has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The sub category could not be saved. Please, try again.'));
            }
        }
        $categories = $this->SubCategories->Categories->find('list', ['limit' => 200]);
        $this->set(compact('subCategory', 'categories'));
        $this->set('_serialize', ['subCategory']);
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
        $this->request->allowMethod(['post', 'delete']);
        $subCategory = $this->SubCategories->get($id);
        if ($this->SubCategories->delete($subCategory)) {
            $this->Flash->success(__('The sub category has been deleted.'));
        } else {
            $this->Flash->error(__('The sub category could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['favoriteSubcategories', 'index']);
    }

    public function favoriteSubcategories()
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
            'fields' => ['store_name', 'id', 'created', 'modified'],
            'conditions' => ['user_id' => $this->Auth->user('username')]
        ];
        $stores = TableRegistry::get('Stores')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('stores', $stores);

        //-------------------------------------------------------------------------

        //ESTE MÉTODO DEVERÁ SER REFEITO QUANDO FOR CRIADA A
        //TABELA DE FAVORITOS, ATUALMENE ESTA SOMENTE "EMULANDO"
        //UM RESULTADO ESPERADO.
        $setting = [
            'fields' => ['id', 'sub_category_name', 'created', 'modified']
        ];
        $favoriteSubcategories = TableRegistry::get('SubCategories')
            ->find('all', $setting)->hydrate(false)->toArray();
        $this->set('favoriteSubcategories', $favoriteSubcategories);
    }
}