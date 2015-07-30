<div class="col-md-10 col-md-offset-1 span7 text-center">
    <?php foreach($smallBanners as $smallBanner): ?>
        <div class="col-md-4">
            <?= $this->Html->image($smallBanner['path_banner'], ['title' => $smallBanner['banner_description'], 'url' => $smallBanner['url_redirect'], 'class' => 'img-full-screen']) ?>
        </div>
    <?php endforeach; ?>
</div>