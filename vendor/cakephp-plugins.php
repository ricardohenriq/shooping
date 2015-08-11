<?php
$baseDir = dirname(dirname(__FILE__));
return [
    'plugins' => [
        'Bake' => $baseDir . '/vendor/cakephp/bake/',
        'Burzum/FileStorage' => $baseDir . '/vendor/burzum/cakephp-file-storage/',
        'Burzum/Imagine' => $baseDir . '/vendor/burzum/cakephp-imagine-plugin/',
        'DebugKit' => $baseDir . '/vendor/cakephp/debug_kit/',
        'Migrations' => $baseDir . '/vendor/cakephp/migrations/',
        'Shrink' => $baseDir . '/vendor/trentrichardson/cakephp-shrink/'
    ]
];
