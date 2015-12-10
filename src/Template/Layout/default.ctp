<!DOCTYPE html>
<html>
    <head>
        <?= $this->Html->charset() ?>
        <?= $this->fetch('meta') ?>
        <?= $this->fetch('css') ?>
        <?= $this->fetch('script') ?>
    </head>
    <body>
        <?= $this->element('Navbar/navbar_main') ?>
        <div class="wrapper">
            <div class="container">
                <?= $this->fetch('content') ?>
            </div>
        </div>
		<?= $this->element('Body/back_top') ?>
		<?= $this->element('Footer/footer_information') ?>
        <?= $this->fetch('modals') ?>
    </body>
</html>
