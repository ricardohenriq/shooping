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
        <title><?= $pageTitle ?></title>
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
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <?= $this->element('Body/account_menu') ?>
                    <?= $this->element('Body/profile') ?>
                </div>
                <div class="row">
                    <?= $this->element('Body/small_banners') ?>
                </div>
                <div class="row">
                    <?= $this->element('Body/full_banner') ?>
                </div>
                <div class="row">
                    <?= $this->element('Footer/footer_newsletter') ?>
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
            <?= $this->element('Modal/edit_profile_modal') ?>
        <?php endif; ?>
    </body>
</html>