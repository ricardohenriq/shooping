<div id="products" class="col-lg-9">
    <?php foreach($products as $product): ?>
        <div class="item-block">
            <?= $this->Html->image($product['thumbnail'], ['alt' => $product['product_name']]) ?>
            <div class="item-description">
                <span class="item-name"><?= $product['product_name'] ?></span>
                <?php if($product['price'] < $product['old_price']): ?>
                    <span class="item-old-price">De R$ <?= $product['old_price'] ?></span>
                <?php endif; ?>
                <span class="item-price">R$ <?= $product['price'] ?></span>
            </div>
        </div>
    <?php endforeach; ?>
</div>