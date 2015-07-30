<div id="offers" class="col-md-9">
    <ul id="offers-slide">
        <?php foreach($offerBanners as $offerBanner): ?>
            <li><?= $this->Html->image($offerBanner['path_banner'], ['alt' => $offerBanner['description'], 'title' => $offerBanner['name']]) ?></li>
        <?php endforeach; ?>
        <li>
            <div class="item-offer">
                <div class="product-thumb">
                    <img src="img/products/product2.jpg" />
                </div>
                <div class="product-description">
                    Texto Texto Texto Texto Texto Texto
                    Texto Texto Texto Texto Texto Texto
                    Texto Texto Texto Texto Texto Texto
                    Texto Texto Texto Texto Texto Texto
                </div>
            </div>
        </li>
    </ul>
</div>