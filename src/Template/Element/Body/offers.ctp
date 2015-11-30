<div id="offers" class="col-md-9">
    <ul id="offers-slide">
        <?php foreach($offers as $offer): ?>
            <?php if($offer['offer_banners'] == true ):?>
                <li><?= $this->Html->image($offer['offer_banners'][0]['path'], ['alt' => $offer['description'], 'title' => $offer['name'], 'url' => ['controller' => 'Products', 'action' => 'view', $offer['product']['id']]]) ?></li>
            <?php else: ?>
                <li>
                    <div class="item-offer">
                        <div class="product-thumb">
                            <?= $this->Html->image($offer['product']['medias'][0]['path'], ['alt' => $offer['product']['product_name'], 'title' => $offer['product']['product_name'], 'url' => ['controller' => 'Products', 'action' => 'view', $offer['product']['id']]]) ?>
                        </div>
                        <div class="product-description">
                            <div>
                                <?php echo $offer['product']['product_name'] ?>
                            </div>
                            <div>
                                <?php echo $offer['description'] ?>
                            </div>
                            <div>
                                <?php if($offer['product']['price'] < $offer['product']['old_price']): ?>
                                    <span class="item-old-price">De R$ <?= $offer['product']['old_price'] ?></span>
                                <?php endif; ?>
                                <span class="item-price">R$ <?= $offer['product']['price'] ?></span>
                            </div>
                        </div>
                    </div>
                </li>
            <?php endif; ?>
        <?php endforeach; ?>
    </ul>
</div>