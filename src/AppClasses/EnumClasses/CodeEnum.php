<?php
/**
 * Created by PhpStorm.
 * User: Ricardo
 * Date: 18/09/2015
 * Time: 15:36
 */

namespace App\AppClasses\EnumClasses;

abstract class CodeEnum extends BasicEnum{
    const LOGIN_GRANTED = 1;
    const LOGIN_DENIED = 2;
    const USER_DELETED = 3;
    const USER_NOT_DELETED = 4;
    const USER_EDITED = 5;
    const USER_NOT_EDITED = 6;
    const USER_ADDED = 7;
    const USER_NOT_ADDED = 8;
    const SUBSCRIBE_ADDED = 9;
    const SUBSCRIBE_NOT_ADDED = 10;
}