<div class="col-md-12 span7 text-center">
    <?php foreach($smallBanners as $smallBanner): ?>
        <?= $this->Html->image($smallBanner['path_banner'], ['title' => $smallBanner['banner_description'], 'url' => $smallBanner['url_redirect']]) ?>
    <?php endforeach; ?>
</div>