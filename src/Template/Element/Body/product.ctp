<div id="product-pic" class="col-md-6">
    <?= $this->Html->image('products/full.jpg', ['alt' => 'Full', 'id' => 'full', 'data-zoom-image'=> '/img/products/full.jpg', 'class' => 'full-product']) ?>
    <div id="product-gallery">
        <a href="#" data-image="/img/products/full.jpg" data-zoom-image="/img/products/full.jpg">
            <?= $this->Html->image('products/full.jpg', ['alt' => 'Full', 'id' => 'full', 'class' => 'thumb-product']) ?>
        </a>
        <a href="#" class="thumb-product" data-image="/img/products/side.jpg" data-zoom-image="/img/products/side.jpg">
            <?= $this->Html->image('products/side.jpg', ['alt' => 'Side', 'id' => 'side', 'class' => 'thumb-product']) ?>
        </a>
        <a href="#" class="thumb-product" data-image="/img/products/back.jpg" data-zoom-image="/img/products/back.jpg">
            <?= $this->Html->image('products/back.jpg', ['alt' => 'Back', 'id' => 'back', 'class' => 'thumb-product']) ?>
        </a>
        <a href="#" class="thumb-product" data-image="/img/products/front.jpg" data-zoom-image="/img/products/front.jpg">
            <?= $this->Html->image('products/front.jpg', ['alt' => 'Front', 'id' => 'front', 'class' => 'thumb-product']) ?>
        </a>
    </div>
</div>
<div class="product-info col-md-4">
    <span class="item-name"><?= $product['product_name'] ?></span>
    <span class="item-name"><?= $product['description'] ?></span>
    <?php if($product['price'] < $product['old_price']): ?>
        <span class="item-old-price">De R$ <?= $product['old_price'] ?></span>
    <?php endif; ?>
    <span class="item-price">R$ <?= $product['price'] ?></span>
    <?= $this->Form->button('Reservar', ['type' => 'submit', 'class' => 'btn btn-success']) ?>
    <?= $this->Form->button('Favoritar', ['type' => 'submit', 'class' => 'btn btn-success']) ?>
</div>
<div class="product-statistics col-md-2">
    <span class="label label-success">Vendidos</span>
    <span><?= $product['sold'] ?></span>
    <span class="label label-success">Visto</span>
    <span><?= $product['visited'] ?></span>
    <span class="label label-success">Status</span>
    <span><?= $product['status'] ?></span>
</div>