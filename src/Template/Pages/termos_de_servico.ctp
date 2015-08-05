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
        <title>Termos de Serviço</title>
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
        <?= $this->Html->css('Bootstrap/css/bootstrap.min.css') ?>
        <?= $this->Html->css('font-awesome-4.3.0/css/font-awesome.min.css') ?>
        <?= $this->Html->css('datepicker/css/datepicker.css') ?>
        <?= $this->Html->css('jquery-bxslider/jquery.bxslider.css') ?>
        <?= $this->Html->css('style.css') ?>
        <?= $this->Html->css('menu-plugin.css') ?>
        <?= $this->Html->script('jquery-1.11.1.min.js') ?>
        <?= $this->Html->script('bootstrap.min.js') ?>
        <?= $this->Html->script('Jquery-Validate/jquery.validate.min.js') ?>
        <?= $this->Html->script('datepicker/js/bootstrap-datepicker.js') ?>
        <?= $this->Html->script('jquery-bxslider/jquery.bxslider.min.js') ?>
        <?= $this->Html->script('elevatezoom/jquery.elevateZoom-3.0.8.min.js') ?>
        <?= $this->Html->script('main.js',['defer' => true]) ?>
    </head>
    <body>
        <?= $this->element('Navbar/navbar-main') ?>
        <?= $this->Flash->render() ?>
        <div class="wrapper" role="main">
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
                        <div class="panel-footer span7 text-center"><a href="#">Mais dúvidas? Envie-nos um Email</a></div>
                    </div>
                </div>
            </div>
        </div>
        <?= $this->element('Body/back-top') ?>
        <?= $this->element('Footer/footer-information') ?>
        <?php if ($logged == false): ?>
            <?= $this->element('Modal/create-account-modal') ?>
            <?= $this->element('Modal/login-modal') ?>
        <?php elseif($logged == true): ?>
            <?= $this->element('Modal/logout-modal') ?>
        <?php endif; ?>
    </body>
</html>