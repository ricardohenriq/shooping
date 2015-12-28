<?php
namespace App\Model\Table;

use App\Lib\Utils\ModelUtils;
use App\Lib\Utils\UploadUtils;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\ORM\TableRegistry;
use Cake\Validation\Validator;

/**
 * Products Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Stores
 * @property \Cake\ORM\Association\BelongsTo $SubCategories
 * @property \Cake\ORM\Association\HasMany $Bookings
 * @property \Cake\ORM\Association\HasMany $Comments
 * @property \Cake\ORM\Association\HasMany $Medias
 * @property \Cake\ORM\Association\HasMany $Offers
 * @property \Cake\ORM\Association\HasMany $ProductFeatures
 */
class ProductsTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->table('products');
        $this->displayField('id');
        $this->primaryKey('id');
        $this->addBehavior('Timestamp');
        $this->belongsTo('Stores', [
            'foreignKey' => 'store_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('SubCategories', [
            'foreignKey' => 'sub_category_id',
            'joinType' => 'INNER'
        ]);
        $this->hasMany('Bookings', [
            'foreignKey' => 'product_id'
        ]);
        $this->hasMany('Comments', [
            'foreignKey' => 'product_id'
        ]);
        $this->hasMany('Medias', [
            'foreignKey' => 'product_id'
        ]);
        $this->hasMany('Offers', [
            'foreignKey' => 'product_id'
        ]);
        $this->hasMany('ProductFeatures', [
            'foreignKey' => 'product_id'
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->add('id', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('id', 'create');

        $validator
            ->requirePresence('product_name', 'create')
            ->notEmpty('product_name');

        $validator
            ->add('quantity', 'valid', ['rule' => 'numeric'])
            ->requirePresence('quantity', 'create')
            ->notEmpty('quantity');

        $validator
            ->add('sold', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('sold');

        $validator
            ->requirePresence('description', 'create')
            ->notEmpty('description');

        $validator
            ->add('price', 'valid', ['rule' => 'decimal'])
            ->requirePresence('price', 'create')
            ->notEmpty('price');

        $validator
            ->add('old_price', 'valid', ['rule' => 'decimal'])
            ->allowEmpty('old_price');

        $validator
            ->add('visited', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('visited');

        $validator
            ->add('status', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('status');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        $rules->add($rules->existsIn(['store_id'], 'Stores'));
        $rules->add($rules->existsIn(['sub_category_id'], 'SubCategories'));
        return $rules;
    }

    public function getProductTrendByColumn($column, $subCategoryId)
    {
        $products = $this->find();
        if($subCategoryId != 0){
            $products->where(['sub_category_id' => $subCategoryId]);
        }
        $products
            ->select(['id', 'product_name', 'sub_category_id', 'price', 'old_price'])
            ->order([$column => 'DESC'])
            ->limit(4)
            ->contain([
                'Medias' => function($q){
                    return $q->select(['path', 'product_id'])
                        ->where(['media_type_id' => 3]);
                }
            ]);
        return $products->hydrate(false)->toArray();
    }

    public function getProductByStore($storeId){
        $setting = [
            'fields' => ['id', 'product_name', 'store_id', 'created', 'modified'],
            'conditions' => ['store_id' => $storeId]
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }

    public function getFavoriteProducts($userId)
    {
        $setting = [
            'fields' => ['id', 'product_name', 'created', 'modified']
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }

    public function getProductRecursive($productId)
    {
        return $this
            ->find()
            ->select(['Products.id', 'product_name', 'store_id', 'sub_category_id',
                'quantity', 'sold', 'description', 'price', 'old_price', 'visited',
                'status', 'created'])
            ->where(['Products.id' => $productId])
            ->contain([
                'ProductFeatures' => function($q){
                    return $q->select(['ProductFeatures.id', 'feature_value', 'feature_intern_code', 'product_id'])
                        ->contain([
                            'Features' => function($q){
                                return $q->select(['Features.id', 'intern_code', 'feature_name']);
                            }
                        ]);
                },
                'Stores' => function($q){
                    return $q->select(['id', 'store_name']);
                }
            ])->hydrate(false)->first();
    }

    public function getProducts($storeId)
    {
        $setting = [
            'fields' => ['product_name', 'quantity', 'sold', 'price'],
            'conditions' => ['store_id' => $storeId],
            'order' => ['product_name' => 'ASC']
        ];
        return $this
            ->find('all', $setting)->hydrate(false)->toArray();
    }

    public function setProductByForm($form)
    {
        $product = $this->newEntity();
        $product = $this->patchEntity($product, $form);
        $productSaved = $this->save($product);

        $productFeatures = TableRegistry::get('ProductFeatures');
		$productFeaturesSaved = $productFeatures->setProductFeaturesEntities(
			ModelUtils::prepareProductsFeatures($form, $productSaved['id'])
		);

		$imagesUploaded = UploadUtils::uploadFiles(
			PRODUCTS_IMAGES_FOLDER . $productSaved['id'], $form['file']
		);

		$outputThumbUrl = UploadUtils::getOutputThumbUrl($imagesUploaded[0]['url'], $productSaved['id']);

		$thumbUploaded = UploadUtils::resizeImage([
			'input' => $imagesUploaded[0]['url'], 'output' => $outputThumbUrl,
			'width' => 250, 'height' => 250, 'mode' => 'stretch'
		]);

        $medias = TableRegistry::get('Medias');
		$thumbSaved = $medias->setMediaEntity(
			ModelUtils::prepareMediaThumb($productSaved['id'], $outputThumbUrl)
		);
		$mediasSaved = $medias->setMediasEntities(
			ModelUtils::prepareMedias($imagesUploaded, $productSaved['id'])
		);
		
		if($productSaved && $productFeaturesSaved && $imagesUploaded && $thumbUploaded && $thumbSaved && $mediasSaved)
		{
			return true;
		}else
		{
			return false;
		}
    }
}
