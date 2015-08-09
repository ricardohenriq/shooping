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
        <title>Formulário de Email</title>
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
        <?= $this->element('Navbar/navbar-main') ?>
        <?= $this->Flash->render() ?>
        <div class="wrapper" role="main">
            <div class="container">
                <div class="row">
                    <div class="panel panel-default col-md-6 col-md-offset-3">
                        <div class="panel-heading">
                            <h3 class="panel-title span7 text-center title">Formulário de Email</h3>
                        </div>
                        <div class="panel-body">
                            <?= $this->Form->create(null, ['url' => ['controller' => '', 'action' => ''], 'type' => 'post', 'id' => 'email-form', 'class' => 'form-horizontal']) ?>
                                <div class="form-group">
                                    <label for="email" class="control-label col-md-3">Seu Email</label>
                                    <div class="col-md-9">
                                        <?= $this->Form->text('email', ['type' => 'email', 'class' => 'form-control', 'placeholder' => 'Email']) ?>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="name" class="control-label col-md-3">Seu Nome</label>
                                    <div class="col-md-9">
                                        <?= $this->Form->text('name', ['class' => 'form-control', 'placeholder' => 'Nome']) ?>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="subject" class="control-label col-md-3">Assunto</label>
                                    <div class="col-md-9">
                                        <?= $this->Form->text('subject', ['class' => 'form-control', 'placeholder' => 'Assunto']) ?>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="message" class="control-label col-md-3">Mensagem</label>
                                    <div class="col-md-9">
                                        <?= $this->Form->textarea('message', ['class' => 'form-control', 'rows' => '3', 'placeholder' => 'Mensagens']) ?>
                                    </div>
                                </div>
                                <div class="form-group text-center">
                                    <div class="col-md-6 col-md-offset-3">
                                        <?= $this->Form->button('Limpar', ['type' => 'reset', 'class' => 'btn btn-danger']) ?>
                                        <?= $this->Form->button('Enviar', ['type' => 'submit', 'class' => 'btn btn-info']) ?>
                                    </div>
                                </div>
                            <?= $this->Form->end() ?>
                        </div>
                        <div class="panel-footer span7 text-center">
                            <?= $this->Html->link('Voltar ao Site',['controller' => 'Pages', 'action' => 'display', 'home']) ?>
                        </div>
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