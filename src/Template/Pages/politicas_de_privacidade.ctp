<?php
    /**
     * Página inicial do site, contém um login de usuário, exibe promoções,
     * produtos e logistas mais acessados, um campo pesquisa, um menu de navegação
     * completa por promoções, lojas, categorias de produtos, um rodapé com
     * diversas informações incluindo formas de contato.
     *
     * @author          Ricardo Henrique
     * @copyright       Copyright (c) Magma TI, LTDA. (http://magma.com)
     * @link            http://magma.com/stores Stores Project
     * @version         0.1
     * @since           0.1
     * @licence         http://www.opensource.org/licenses/mit-license.php MIT License
     */

    $this->layout = false;
?>
<!DOCTYPE html>
<html>
    <head>
        <?= $this->Html->charset() ?>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Politica de Privacidade</title>
        <?= $this->Html->meta('favicon.ico','/cart.png', array('type' => 'icon')) ?>
        <?= $this->Html->meta('keywords','palavra chave') ?>
        <?= $this->Html->meta('description','descrição') ?>
        <?= $this->Html->meta('robots','index,follow') ?>
        <?= $this->Html->meta('author','Magma TI') ?>
        <?= $this->Html->meta('reply-to','magma@gmail.com') ?>
        <?= $this->Html->meta('og:title','') ?>
        <?= $this->Html->meta('og:description','') ?>
        <?= $this->Html->meta('og:url','') ?>
        <?= $this->Html->meta('og:image','') ?>
        <?= $this->Html->meta('og:type','') ?>
        <?= $this->Html->meta('og:site_name','') ?>
        <?= $this->Shrink->css(['Bootstrap/css/bootstrap.min.css',
            'font-awesome-4.3.0/css/font-awesome.min.css', 'datepicker/css/datepicker.css',
            'jquery-bxslider/jquery.bxslider.css', 'style.css', 'menu-plugin.css']) ?>
        <?= $this->Shrink->js(['jquery-1.11.1.min.js', 'bootstrap.min.js',
            'Jquery-Validate/jquery.validate.min.js', 'datepicker/js/bootstrap-datepicker.js',
            'jquery-bxslider/jquery.bxslider.min.js', 'main.js']) ?>
        <?= $this->Shrink->fetch('css') ?>
        <?= $this->Shrink->fetch('js') ?>
    </head>
    <body>
        <?= $this->element('Navbar/navbar_main') ?>
        <?= $this->Flash->render() ?>
        <div class="wrapper" role="main">
            <div class="container">
                <div class="row">
                    <div class="panel panel-default col-md-10 col-md-offset-1">
                        <div class="panel-heading">
                            <h3 class="panel-title span7 text-center title">Stores - Politica de Privacidade</span></h3>
                        </div>
                        <div class="panel-body">
                            <p><span class="title">- </span></p>
                            <hr>
                            <p><span class="title">- </span></p>
                            <hr>
                            <p><span class="title">- </span></p>
                            <hr>
                            <p><span class="title">- </span></p>
                            <hr>
                            <p><span class="title">- </span></p>
                        </div>
                        <div class="panel-footer span7 text-center">
                            <?= $this->Html->link('Mais dúvidas? Envie-nos um Email',['controller' => 'Pages', 'action' => 'display', 'email']) ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?= $this->element('Body/back_top') ?>
        <?= $this->element('Footer/footer_information') ?>
        <?php if ($logged == false): ?>
            <?= $this->element('Modal/create_account_modal') ?>
            <?= $this->element('Modal/login_modal') ?>
        <?php elseif($logged == true): ?>
            <?= $this->element('Modal/logout_modal') ?>
        <?php endif; ?>
    </body>
</html>