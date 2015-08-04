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
        <title>Perguntas Frequentes</title>
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
                            <h3 class="panel-title span7 text-center title">Stores - Perguntas Frequentes</h3>
                        </div>
                        <div class="panel-body">
                            <p><span class="title">- </span></p>
                            <hr>
                            <p><span class="title">- O faço para ter acesso as ofertas ?</span></p>
                            <hr>
                            <p><span class="title">- Como posso recuperar meu Login ou Senha ?</span></p>
                            <hr>
                            <p><span class="title">- </span></p>
                            <hr>
                            <p><span class="title">- Como posso favoritar um produto ?</span></p>
                            <hr>
                            <p><span class="title">- Porque fui redirecionado para a página mobile ?</span></p>
                            <hr>
                            <p><span class="title">- Posso acessar o site pelo Smartphone ?</span></p>
                            <hr>
                            <p><span class="title">- É possivel receber notificações de novos produtos ?</span></p>
                            <hr>
                            <p><span class="title">- </span></p>
                            <hr>
                            <p><span class="title">- Como eu reporto um produto ?</span></p>
                            <hr>
                            <p><span class="title">- A velocidade de acesso esta muito ruim</span></p>
                            <hr>
                            <p><span class="title">- How can I remove XVIDEOS from my computer?</span></p>
                            <hr>
                            <p><span class="title">- Como eu deleto um produto ?</span></p>
                            <hr>
                            <p><span class="title">- Como eu faço para anúnciar no Site ?</span></p>
                            <hr>
                            <p><span class="title">- Troca de Links</span></p>
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