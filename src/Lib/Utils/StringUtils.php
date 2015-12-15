<?php

namespace App\Lib\Utils;

class StringUtils {

    /**
     * ripTags($string)
     * Esta funcao tem o objetivo de remover as tags HTML, seu funcionamento
     * é mais seguro que o da funcao nativa do PHP.
     * @param $string que contem um conteudo composto por tags HTML, tags estas
     * que deverão ser removidas.
     * @return $string que armazena o conteudo com as tags HTML removidas.
     */
    public static function ripTags($string){

        /**
         *Remove todas as tags HTML
         */
        $string = preg_replace('/<[^>]*>/', ' ', $string);

        /**
         *Remove todos os caracteres de controle
         */
        $string = str_replace("\r", '', $string);
        $string = str_replace("\n", ' ', $string);
        $string = str_replace("\t", ' ', $string);

        /**
         *Remove multiplos espaços
         */
        $string = trim(preg_replace('/ {2,}/', ' ', $string));
        return $string;
    }
}