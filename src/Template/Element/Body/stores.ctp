<div id="products" class="col-lg-9">
    <?php foreach($stores as $store): ?>
        <div class="item-block">
            <?= $this->Html->image($store['thumb'], ['alt' => $store['product_name'],
                'url' => ['controller' => 'Stores', 'action' => 'view', $store['id']]]) ?>
            <div class="item-description">
                <span class="item-name"><?= $store['product_name'] ?></span>
                <?php if($store['price'] < $store['old_price']): ?>
                    <span class="item-old-price">De R$ <?= $store['old_price'] ?></span>
                <?php endif; ?>
                <span class="item-price">R$ <?= $store['price'] ?></span>
            </div>
        </div>
    <?php endforeach; ?>
</div>