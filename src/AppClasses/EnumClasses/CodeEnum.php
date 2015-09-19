<?php
/**
 * Created by PhpStorm.
 * User: Ricardo
 * Date: 18/09/2015
 * Time: 15:36
 */

namespace App\AppClasses\EnumClasses;

abstract class CodeEnum extends BasicEnum{
    const LOGIN_DENIED = 1;
    const LOGIN_GRANTED = 2;
    const USER_DELETED = 4;
    const USER_NOT_DELETED = 3;
}