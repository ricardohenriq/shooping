<div class="col-md-12 span7 text-center">
    <?php foreach($fullBanners as $fullBanner): ?>
        <?= $this->Html->image($fullBanner['path_banner'], ['title' => $fullBanner['banner_description'], 'url' => $fullBanner['url_redirect']]) ?>
    <?php endforeach; ?>
</div>