<?php
    /**
     *
     * @author          Ricardo Henrique
     * @copyright       Copyright (c) Ricardo Henrique. (http://ricardohenrique.divshot.io/)
     * @link            http://ricardohenrique.divshot.io/
     * @version         0.1
     * @since           0.1
     * @licence         Comercial
     */

    $this->layout = false;
?>
<!DOCTYPE html>
<html>
    <head>
        <?= $this->Html->charset() ?>
        <?= $this->Html->meta('viewport','width=device-width, initial-scale=1.0') ?>
        <?= $this->Html->meta('title','Termos de Serviço') ?>
        <?= $this->Html->meta('favicon.ico','/cart.png', ['type' => 'icon']) ?>
        <?= $this->Html->meta('keywords','') ?>
        <?= $this->Html->meta('description','') ?>
        <?= $this->Html->meta('robots','index,follow') ?>
        <?= $this->Html->meta('author','Ricardo Henrique') ?>
        <?= $this->Html->meta('reply-to','ricardohenrique996@gmail.com') ?>
        <?= $this->Html->meta('og:title','') ?>
        <?= $this->Html->meta('og:description','') ?>
        <?= $this->Html->meta('og:url','') ?>
        <?= $this->Html->meta('og:image','') ?>
        <?= $this->Html->meta('og:type','') ?>
        <?= $this->Html->meta('og:site_name','') ?>

        <?= $this->Html->css('library/jquery-ui-1.11.2.custom/jquery-ui.css') ?>
        <?= $this->Html->css('library/Bootstrap/css/bootstrap.min.css') ?>
        <?= $this->Html->css('library/font-awesome-4.4.0/css/font-awesome.min.css') ?>
        <?= $this->Html->css('library/datepicker/css/datepicker.css') ?>
        <?= $this->Html->css('styles/style.css') ?>

        <?= $this->Html->script('library/jquery-1.11.1/jquery-1.11.1.min.js',['defer' => true]) ?>
        <?= $this->Html->script('library/jquery-ui-1.11.2.custom/jquery-ui.min.js',['defer' => true]) ?>
        <?= $this->Html->script('library/Bootstrap/js/bootstrap.min.js',['defer' => true]) ?>
        <?= $this->Html->script('library/Jquery-Validate/jquery.validate.min.js',['defer' => true]) ?>
        <?= $this->Html->script('library/datepicker/js/bootstrap-datepicker.js',['defer' => true]) ?>
        <?= $this->Html->script('actions/main.js',['defer' => true]) ?>
    </head>
    <body>
        <?= $this->element('Navbar/navbar_main') ?>
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="panel panel-default col-md-10 col-md-offset-1">
                        <div class="panel-heading">
                            <h3 class="panel-title span7 text-center title">Stores - Termos de Serviço</h3>
                        </div>
                        <div class="panel-body">
                            <p><span class="title">- Termos de Uso</span></p>
                            <hr>
                            <p><span class="title">- Conteudo postado no Site</span></p>
                            <hr>
                            <p><span class="title">- Transações e Taxas</span></p>
                            <hr>
                            <p><span class="title">- Fraude</span></p>
                            <hr>
                            <p><span class="title">- Isenções de garantias</span></p>
                            <hr>
                            <p><span class="title">- Limitação de responsabilidade</span></p>
                            <hr>
                            <p><span class="title">- Indenização</span></p>
                            <hr>
                            <p><span class="title">- Uso Internacional</span></p>
                            <hr>
                            <p><span class="title">- Autonomia e integração</span></p>
                            <hr>
                            <p><span class="title">- Prazo e Rescisão</span></p>
                        </div>
                        <div class="panel-footer span7 text-center">
                            <?= $this->Html->link('Mais dúvidas? Envie-nos um Email',['controller' => 'CustomStaticPages', 'action' => 'email']) ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?= $this->element('Body/back_top') ?>
        <?= $this->element('Footer/footer_information') ?>
        <?php if ($userId == false): ?>
            <?= $this->element('Modal/create_account_modal') ?>
            <?= $this->element('Modal/login_modal') ?>
        <?php else: ?>
            <?= $this->element('Modal/logout_modal') ?>
        <?php endif; ?>
    </body>
</html>