<?php
namespace App\Model\Entity;

use Cake\Auth\DefaultPasswordHasher;
use Cake\ORM\Entity;

/**
 * User Entity.
 */
class User extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * @var array
     */
    // Este código permite o acesso às propriedades por um Controller, por exemplo.
    protected $_accessible = [
        'email' => true, // Propriedade existente na tabela
        'password' => true, // Propriedade existente na tabela
        'username' => true, // Propriedade existente na tabela
        'user_type_id' => true, // Propriedade existente na tabela
        'user_type' => true, // Propriedade NÃO existente na tabela, PORQUE esta aqui?
        // são "propriedades de navegação" São apenas estruturas auxiliares pra que você
        // possa obter dados entre as relações bem facilmente.
        'bookings' => true, // Propriedade NÃO existente na tabela, PORQUE esta aqui?
        // são "propriedades de navegação" São apenas estruturas auxiliares pra que você
        // possa obter dados entre as relações bem facilmente.
        'stores' => true, // Propriedade NÃO existente na tabela, PORQUE esta aqui?
        // são "propriedades de navegação" São apenas estruturas auxiliares pra que você
        // possa obter dados entre as relações bem facilmente.
    ];// ACHO QUE TEM A VER COM AS CHAVES PRIMARIAS E ESTRANGEIRAS

    // Método acessor da propriedade "email" (coluna "email" da tabela),
    // este método será executado sempre que a proriedade for recuperada do banco.
    /*protected function _getEmail($email)
    {
        return ucwords($email);
    }*/

    // Método acessor da propriedade "password" (coluna "password" da tabela),
    // este método será executado sempre que a proriedade for inserida no banco.
    protected function _setPassword($password)
    {
        $hasher = new DefaultPasswordHasher();
        return $hasher->hash($password);
    }
}
