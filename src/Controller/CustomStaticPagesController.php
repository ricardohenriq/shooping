<?php
namespace App\Controller;

use App\AppClasses\FormatFormValues\FormatContactForm;
use Cake\Cache\Cache;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;
use Cake\Network\Email\Email;

/**
 * Products Controller
 *
 * @property \App\Model\Table\ProductsTable $Products
 */
class CustomStaticPagesController extends AppController
{
    public function index()
    {
        $categories = Cache::remember(
            'categories', function(){
            $this->loadModel('Categories');
            $categories = $this->Categories->getAllCategories();
            return $categories;
        });

        //-------------------------------------------------------------------------

        $subCategories = Cache::remember(
            'subCategories', function(){
            $this->loadModel('SubCategories');
            $subCategories = $this->SubCategories->getAllSubCategories();
            return $subCategories;
        });

        $subCategoriesName = Cache::remember(
            'subCategoriesName', function(){
            $this->loadModel('SubCategories');
            $subCategoriesName = $this->SubCategories->listAllSubCategories();
            return $subCategoriesName;
        });

        //-------------------------------------------------------------------------

        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');

        $userTypes = Cache::remember(
            'userTypes', function(){
            $this->loadModel('UserTypes');
            $userTypes = $this->UserTypes->listSubCategories();
            return $userTypes;
        });

        //-------------------------------------------------------------------------

        list($fullBanners, $smallBanners) = Cache::remember(
            'banners', function(){
            $this->loadModel('Banners');
            $fullBanners = $this->Banners->full();
            $smallBanners = $this->Banners->small();
            return [$fullBanners, $smallBanners];
        });

        //-------------------------------------------------------------------------

        list($productsBestSeller, $productsNewer, $productsMostPopular) = Cache::remember(
            'productsTrend', function(){
            $this->loadModel('Products');
            $productsBestSeller = $this->Products->getProductTrendByColumn('sold');
            $productsNewer = $this->Products->getProductTrendByColumn('created');
            $productsMostPopular = $this->Products->getProductTrendByColumn('visited');
            return [$productsBestSeller, $productsNewer, $productsMostPopular];
        });

        //-------------------------------------------------------------------------

        $offers = Cache::remember(
            'offers', function(){
            $this->loadModel('Offers');
            $offers = $this->Offers->offersRecursive();
            return $offers;
        });

        //-------------------------------------------------------------------------

        $news = Cache::remember(
            'news', function(){
            $this->loadModel('News');
            $news = $this->News->getRecentNews();
            return $news;
        });

        $this->set(compact('userId', 'username', 'userTypes', 'smallBanners',
            'fullBanners', 'offers', 'news', 'categories', 'subCategories',
            'subCategoriesName', 'productsBestSeller', 'productsNewer',
            'productsMostPopular'));
    }

    public function perguntasFrequentes()
    {
        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');
        $userTypes = Cache::remember(
            'userTypes', function(){
            $this->loadModel('UserTypes');
            $stores = $this->UserTypes->listSubCategories();
            return $stores;
        });

        $this->set(compact('userId', 'username', 'userTypes'));
    }

    public function termosDeServico()
    {
        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');
        $userTypes = Cache::remember(
            'userTypes', function(){
            $this->loadModel('UserTypes');
            $stores = $this->UserTypes->listSubCategories();
            return $stores;
        });

        $this->set(compact('userId', 'username', 'userTypes'));
    }

    public function politicasDePrivacidade()
    {
        $userId = $this->Auth->user('id');
        $username = $this->Auth->user('username');
        $userTypes = Cache::remember(
            'userTypes', function(){
            $this->loadModel('UserTypes');
            $stores = $this->UserTypes->listSubCategories();
            return $stores;
        });

        $this->set(compact('userId', 'username', 'userTypes'));
    }

    public function email()
    {
        if ($this->request->is('get'))
        {
            $userId = $this->Auth->user('id');
            $username = $this->Auth->user('username');
            $userTypes = Cache::remember(
                'userTypes', function(){
                $this->loadModel('UserTypes');
                $stores = $this->UserTypes->listSubCategories();
                return $stores;
            });

            $this->set(compact('userId', 'username', 'userTypes'));
			
		}else if($this->request->is('post'))
        {
			Email::configTransport('gmail', [
				'host' => 'smtp.gmail.com',
				'port' => 587,
				'username' => 'ricardohenrique996@gmail.com',
				'password' => 'mustang996',
				'className' => 'Smtp',
				'tls' => true
			]);

			//-------------------------------------------------------------------------

			$email = new Email();
            $email->transport('gmail');
			$email->from(['ricardohenrique996@gmail.com' => 'Store Site'])
				->to('ricardohenrique1@outlook.com')
                ->emailFormat('html')
				->subject(
                    FormatContactForm::getSubject(
                        $this->request->data['subject'],
                        ['suffix' => ' | Store Site']
                    )
                )
				->send(
                    FormatContactForm::getMessage(
                        $this->request->data,
                        ['uppercaseLabel' => true]
                    )
                );

			//-------------------------------------------------------------------------
			
			return $this->redirect(['controller' => 'CustomStaticPages', 'action' => 'index']);
		}
    }

    public function beforeFilter(Event $event)
    {
        $this->Auth->allow(['index', 'perguntasFrequentes', 'email', 'politicasDePrivacidade', 'termosDeServico']);
    }
}