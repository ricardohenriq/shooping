<?php
/**
 * Created by PhpStorm.
 * User: Ricardo
 * Date: 19/09/2015
 * Time: 10:33
 */

namespace App\Lib\EnumClasses;

abstract class TypeMessageEnum extends BasicEnum{
    const SUCCESS = 'Sucesso';
    const WARNING = 'Cuidado';
    const ERROR = 'Erro';
    const EXCEPTION = 'Exceção';
}