<div class="col-md-10 col-md-offset-1 span7 text-center">
    <?php foreach($fullBanners as $fullBanner): ?>
        <?= $this->Html->image($fullBanner['path_banner'], ['title' => $fullBanner['banner_description'], 'url' => $fullBanner['url_redirect'], 'class' => 'img-full-screen']) ?>
    <?php endforeach; ?>
</div>