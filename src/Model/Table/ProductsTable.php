<?php
namespace App\Model\Table;

use App\Model\Entity\Product;
use ArrayObject;
use Cake\Event\Event;
use Cake\ORM\Entity;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\ORM\TableRegistry;
use Cake\Validation\Validator;
use ImageTool;

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

    public function afterSave(Event $event, Entity $entity, ArrayObject $options){
        //Save ProductFeatures entities
        $featuresArray = $this->getFeatuesArray($this->request->data);
        $featuresEntities = $this->createMassFeaturesEntities($featuresArray, $entity->id);
        $this->insertMassEntities($featuresEntities, 'ProductFeatures');

        //Upload pictures to folder in server
        $ROOT_PATH = dirname(ROOT) . DS;
        $PRODUCTS_IMAGES_FOLDER = $ROOT_PATH . 'ShoppingResources' . DS . 'img' . DS . $entity->id;
        $imagesUploaded = $this->uploadFiles($PRODUCTS_IMAGES_FOLDER, $this->request->data['file']);

        //Create and Upload thumbnail to folder in server
        $outputThumb = str_replace($PRODUCTS_IMAGES_FOLDER, $ROOT_PATH . 'ShoppingResources' . DS . 'thumb', $imagesUploaded[0]['url']);
        $imageResized = $this->resizeImage([
            'input' => $imagesUploaded[0]['url'], 'output' => $outputThumb, 'width' => 250, 'height' => 250, 'mode' => 'stretch'
        ]);

        //Prepare image data array to be transformed into entity
        $thumbUploaded['url'] = str_replace($ROOT_PATH, 'http://localhost/PROJETOS/', $outputThumb);
        $thumbUploaded['url'] = str_replace('\\', '/', $thumbUploaded['url']);
        $thumbUploaded['media_type_id'] = 3;

        //Save Media entity (thumbnail)
        $mediaEntity = $this->createMediaEntity($thumbUploaded, $entity->id);
        TableRegistry::get('Medias')->save($mediaEntity);

        //Prepare image data array to be transformed into entities
        $imagesUploaded = $this->addKeyValueToArray($imagesUploaded, 'media_type_id', 1);
        $imagesUploaded[0]['media_type_id'] = 2;
        $imagesUploaded = $this->replaceArrayValue($imagesUploaded, 'url', 'http://localhost/PROJETOS/', $ROOT_PATH);
        $imagesUploaded = $this->replaceArrayValue($imagesUploaded, 'url', '/', '\\');

        //Save Medias entities
        $mediasEntities = $this->createMassMediasEntities($imagesUploaded, $entity->id);
        $this->insertMassEntities($mediasEntities, 'Medias');
    }

    public function uploadFiles($folder, $files){
        // create the folder if it does not exist
        if(!is_dir($folder)){
            mkdir($folder);
        }

        // list of permitted file types, this is only images but documents can be added
        $permitted = ['image/gif','image/jpeg','image/pjpeg','image/png'];

        // loop through and deal with the files
        foreach($files as $file){
            // replace spaces with underscores
            $filename = str_replace(' ', '_', $file['name']);
            // assume filetype is false
            $typeOK = false;
            // check filetype is ok
            foreach($permitted as $type){
                if($type == $file['type']){
                    $typeOK = true;
                    break;
                }
            }

            // if file type ok upload the file
            if($typeOK){
                // switch based on error code
                switch($file['error']){
                    case 0:
                        // check filename already exists
                        if(!file_exists($folder . DS . $filename)){
                            // create full filename
                            $url = $folder . DS . $filename;
                            // upload the file
                            $success = move_uploaded_file($file['tmp_name'], $url);
                        } else{
                            // create unique filename and upload file
                            ini_set('date.timezone', 'Europe/London');
                            $now = date('Y-m-d-His');
                            $url = $folder . DS . $now . $filename;
                            $success = move_uploaded_file($file['tmp_name'], $url);
                        }
                        // if upload was successful
                        if($success){
                            // save the url of the file
                            $result[]['url'] = $url;
                        } else{
                            $result['errors'][] = "Error uploaded $filename. Please try again.";
                        }
                        break;
                    case 3:
                        // an error occured
                        $result['errors'][] = "Error uploading $filename. Please try again.";
                        break;
                    default:
                        // an error occured
                        $result['errors'][] = "System error uploading $filename. Contact webmaster.";
                        break;
                }
            } elseif($file['error'] == 4){
                // no file was selected for upload
                $result['nofiles'][] = "No file Selected";
            } else{
                // unacceptable file type
                $result['errors'][] = "$filename cannot be uploaded. Acceptable file types: gif, jpg, png.";
            }
        }
        return $result;
    }

    public function resizeImage($settings)
    {
        $status = ImageTool::resize([
            'input' => $settings['input'],
            'output' => $settings['output'],
            'width' => $settings['width'],
            'height' => $settings['height'],
            'mode' => $settings['mode']
        ]);
        return $status;
    }

    public function insertMassEntities($entities, $entityName)
    {
        foreach ($entities as $entity) {
            TableRegistry::get($entityName)->save($entity);
        }
    }

    public function createMassFeaturesEntities($featuresArray, $productID)
    {
        $featuresEntities = [];

        foreach ($featuresArray as $feature) {
            $featureEntity = TableRegistry::get('ProductFeatures')->newEntity();
            $featureEntity->product_id = $productID;
            $featureEntity->feature_value = $feature['feature_value'];
            $featureEntity->feature_intern_code = $feature['feature_intern_code'];
            $featuresEntities[] = $featureEntity;
        }

        return $featuresEntities;
    }

    public function getFeatuesArray($formValues)
    {
        $featuresArray = [];

        foreach ($formValues as $key => $field) {
            if (stripos($key, 'FEA') === 0) {
                $featuresArray[] = ['feature_intern_code' => $key,
                    'feature_value' => $formValues[$key]];
            }
        }

        return $featuresArray;
    }

    public function createMassMediasEntities($mediasArray, $productID)
    {
        $mediasEntities = [];

        foreach ($mediasArray as $media) {
            $mediaEntity = TableRegistry::get('Medias')->newEntity();
            $mediaEntity->product_id = $productID;
            $mediaEntity->media_type_id = $media['media_type_id'];
            $mediaEntity->path = $media['url'];
            $mediasEntities[] = $mediaEntity;
        }

        return $mediasEntities;
    }

    public function createMediaEntity($mediaArray, $productID)
    {
        $mediaEntity = TableRegistry::get('Medias')->newEntity();
        $mediaEntity->product_id = $productID;
        $mediaEntity->media_type_id = $mediaArray['media_type_id'];
        $mediaEntity->path = $mediaArray['url'];
        return $mediaEntity;
    }

    public function addKeyValueToArray($array, $key, $value)
    {
        foreach ($array as &$element) {
            $element[$key] = $value;
        }

        return $array;
    }

    public function replaceArrayValue($array, $key, $newString, $oldString)
    {
        foreach ($array as &$element) {
            $element[$key] =  str_replace($oldString, $newString, $element[$key]);
        }

        return $array;
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
}
