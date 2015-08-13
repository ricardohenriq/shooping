<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <button type="button" class="btn btn-primary btn-xs pull-right" data-toggle="modal" data-target="#edit_profile_modal">Adicionar Banner</button>
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
                                <?= $this->Html->image($smallBanner['path_banner'], ['title' => $smallBanner['banner_description'], 'url' => $smallBanner['url_redirect'], 'class' => 'img-full-screen']) ?>
                                <div class="mask">
                                    <h2><?= $smallBanner['banner_description'] ?></h2>
                                    <a href="#" class="btn btn-info" title="Editar este Banner">
                                        <span class="glyphicon glyphicon-pencil"></span>
                                    </a>
                                    <a href="#" class="btn btn-danger" title="Deletar este Banner">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </a>
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
                            <?= $this->Html->image($fullBanner['path_banner'], ['title' => $fullBanner['banner_description'], 'url' => $fullBanner['url_redirect'], 'class' => 'img-full-screen']) ?>
                            <div class="mask">
                                <h2><?= $fullBanner['banner_description'] ?></h2>
                                <a href="#" class="btn btn-info">
                                    <span class="glyphicon glyphicon-search"></span>
                                </a>
                                <a href="#" class="btn btn-info">
                                    <span class="glyphicon glyphicon-link"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>