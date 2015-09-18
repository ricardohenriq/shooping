<?php
/**
 * Created by PhpStorm.
 * User: Ricardo
 * Date: 18/09/2015
 * Time: 15:36
 */

namespace App\AppClasses\EnumClasses;

abstract class NameEnum extends BasicEnum{
    const LOGIN_DENIED = 'Não foi possivel efetuar o Login';
    const LOGIN_GRANTED = 'Login efetuado com sucesso.';
}