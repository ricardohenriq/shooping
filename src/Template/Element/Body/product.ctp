<div id="product-pic" class="col-md-6">
    <?= $this->Html->image($productMainImage['path'], ['id' => 'product-img', 'data-zoom-image'=> $productMainImage['path'], 'class' => 'full-product']) ?>
    <div id="product-gallery">
        <a href="#" data-image="<?= $productMainImage['path'] ?>" data-zoom-image="<?= $productMainImage['path'] ?>" class="active">
            <?= $this->Html->image($productMainImage['path'], ['id' => 'product-img', 'class' => 'thumb-product elevatezoom-gallery']) ?>
        </a>
        <?php foreach($productImages as $productImage): ?>
            <a href="#" data-image="<?= $productImage['path'] ?>" data-zoom-image="<?= $productImage['path'] ?>">
                <?= $this->Html->image($productImage['path'], ['class' => 'thumb-product']) ?>
            </a>
        <?php endforeach; ?>
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