<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <button type="button" class="btn btn-primary btn-xs pull-right" data-toggle="modal" data-target="#add_banner_modal">Adicionar Banner</button>
            <h3 class="panel-title text-center title">Meus Banners</h3>
        </div>
        <div class="panel-body span7 text-center">
            <h3 class="pull-left"><i class="fa fa-cubes"></i> Small Banners</h3>
            <hr class="banners-delimiter">
            <div class="row">
                <div class="col-md-12">
                    <?php foreach($smallBanners as $smallBanner): ?>
                        <div class="col-md-4 banner-block">
                            <div class="view view-first">
                                <?= $this->Html->image($smallBanner['path_banner'],
                                ['title' => $smallBanner['banner_description'], 'url' => $smallBanner['url_redirect'],
                                'class' => 'img-full-screen']) ?>
                                <div class="mask">
                                    <h2><?= $smallBanner['banner_description'] ?></h2>

                                    <?= $this->Html->link('<span class="glyphicon glyphicon-eye-open"></span>','#',
                                    ['class' => 'btn btn-success', 'title' => 'Detalhes do Banner', 'data-toggle' => 'modal',
                                    'data-target' => '#view_banner_modal', 'onclick' =>
                                    'getBanner(\'banners/get-banner-json/' . $smallBanner['id'] . '\', \'#view_banner_modal\')', 'escape' => false])?>

                                    <?= $this->Html->link('<span class="glyphicon glyphicon-pencil"></span>','#',
                                    ['class' => 'btn btn-info', 'title' => 'Editar este Banner', 'escape' => false])?>

                                    <?= $this->Form->postLink('<span class="glyphicon glyphicon-trash"></span>',
                                    ['controller' => 'Users', 'action' => 'delete', $smallBanner['id']],
                                    ['class' => 'btn btn-danger', 'title' => 'Deletar este Banner', 'escape' => false,
                                    'confirm' => __('Você deseja realmente deletar o Banner: #{0}?',
                                    $smallBanner['banner_description'])]) ?>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <h3 class="pull-left"><i class="fa fa-cube"></i> Full Banners</h3>
            <hr class="banners-delimiter">
            <div class="row">
                <?php foreach($fullBanners as $fullBanner): ?>
                    <div class="col-md-12 banner-block">
                        <div class="view view-first">
                            <?= $this->Html->image($fullBanner['path_banner'],
                            ['title' => $fullBanner['banner_description'], 'url' => $fullBanner['url_redirect'],
                            'class' => 'img-full-screen']) ?>
                            <div class="mask">
                                <h2><?= $fullBanner['banner_description'] ?></h2>

                                <?= $this->Html->link('<span class="glyphicon glyphicon-eye-open"></span>','#',
                                ['class' => 'btn btn-success', 'title' => 'Detalhes do Banner', 'data-toggle' => 'modal',
                                'data-target' => '#view_banner_modal', 'onclick' =>
                                'getBanner(\'banners/get-banner-json/' . $fullBanner['id'] . '\', \'#view_banner_modal\')', 'escape' => false])?>

                                <?= $this->Html->link('<span class="glyphicon glyphicon-pencil"></span>','#',
                                ['class' => 'btn btn-info', 'title' => 'Editar este Banner', 'escape' => false])?>

                                <?= $this->Form->postLink('<span class="glyphicon glyphicon-trash"></span>',
                                ['controller' => 'Users', 'action' => 'delete', $fullBanner['id']],
                                ['class' => 'btn btn-danger', 'title' => 'Deletar este Banner', 'escape' => false,
                                'confirm' => __('Você deseja realmente deletar o Banner: #{0}?',
                                $fullBanner['banner_description'])]) ?>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>