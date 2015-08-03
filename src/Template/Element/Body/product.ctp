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
    <span class="item-name">Smartphone Asus ZenFone 5 Dual Chip Desbloqueado Android 4.4 Tela 5" 8GB 3G Wi-Fi Câmera 8MP Preto</span>
    <!--<php if($product['price'] < $product['old_price']): ?>
        <span class="item-old-price">De R$ 600.00</span>
    <php endif; ?>-->
    <span class="item-old-price">De R$ 600.00</span>
    <span class="item-price">R$ 400.50</span>
    <?= $this->Form->button('Reservar', ['type' => 'submit', 'class' => 'btn btn-success']) ?>
    <?= $this->Form->button('Favoritar', ['type' => 'submit', 'class' => 'btn btn-success']) ?>
</div>
<div class="product-statistics col-md-2">
    <span class="label label-success">Vendidos</span>
    <span>40000</span>
    <span class="label label-success">Visto</span>
    <span>7800</span>
    <span class="label label-success">Status</span>
    <span>Em Estoque</span>
</div>