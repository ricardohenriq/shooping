<?php
namespace App\Mailer;

use Cake\Mailer\Mailer;

class UserMailer extends Mailer
{
    public function welcome($user)
    {
    $this->_email->profile('default');
    $this->_email->to($user->email);
    $this->_email->subject(sprintf('Welcome %s', $user->name));
    }

    public function resetPassword($user)
    {
    $this->_email->profile('default');
    $this->_email->to($user->email);
    $this->_email->subject('Reset password');
    $this->set(['token' => $user->token]);
    }
}