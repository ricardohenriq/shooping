<div id="news" class="col-md-12">
    <ul id="news-slide">
        <?php foreach($newBanners as $newBanner): ?>
            <li><?= $this->Html->image($newBanner['path_banner'], ['alt' => $newBanner['description'], 'title' => $newBanner['name']]) ?></li>
        <?php endforeach; ?>
        <li>
            <div class="item-new">
                <div class="new-thumb">
                    <img src="http://localhost:8765/img/news-thumb/new-thumb1.png">
                </div>
                <div class="new-description">
                    Texto Texto Texto Texto Texto Texto
                </div>
            </div>
        </li>
    </ul>
</div>