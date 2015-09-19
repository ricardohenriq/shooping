<?php
/**
 * Created by PhpStorm.
 * User: Ricardo
 * Date: 18/09/2015
 * Time: 15:36
 */

namespace App\AppClasses\EnumClasses;

abstract class NameEnum extends BasicEnum{
    const LOGIN_GRANTED = 'Login efetuado com sucesso.';
    const LOGIN_DENIED = 'Não foi possivel efetuar o Login';
    const USER_DELETED = 'Usuário deletado com sucesso.';
    const USER_NOT_DELETED = 'Usuário não pode ser deletado.';
    const USER_EDITED = 'Usuário editado com sucesso.';
    const USER_NOT_EDITED = 'Usuário não pode ser editado.';
    const USER_ADDED = 'Usuário adicionado com sucesso.';
    const USER_NOT_ADDED = 'Usuário não pode ser adicionado.';
}