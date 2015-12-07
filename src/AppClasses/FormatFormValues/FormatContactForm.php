<?php

namespace App\AppClasses\FormatFormValues;

class FormatContactForm {

    public static function getSubject($subject, $settings){
        if(@$settings['uppercase'] == true){
            $subject = strtoupper($subject);
        }
        @$subjectFormatted = $settings['prefix'] . $subject . $settings['suffix'];
        return $subjectFormatted;
    }

    public static function getMessage($message, $settings){

        $messageBody = null;

        foreach($message as $key => $value){
            if(@$settings['uppercaseLabel'] == true){
                $key = strtoupper($key);
            }
            if(@$settings['uppercaseField'] == true){
                $value = strtoupper($value);
            }
            $messageBody .= '<strong>' . $key .
            ': </strong> ' . $value . '<br>';
        }

        return $messageBody;
    }
}