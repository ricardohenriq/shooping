<div id="product-trends" class="col-lg-10 col-lg-offset-1">
    <div class="col-lg-4">
        <h3><i class="fa fa-user-plus"></i> Mais Populares</h3>
        <?= $this->Form->input('most-popular-subcat', ['label' => false, 'options' => $subCategoriesName, 'class' => 'form-control', 'empty' => 'Todas Subcategorias', 'id' => 'most-pupular-subcat']) ?>
        <div id="most-popular-container">
            <ul id="most-popular-products">
                <?php foreach($productsMostPopular as $productMostPopular): ?>
                    <li>
                        <div class="item-block">
                            <?= $this->Html->image($productMostPopular['medias'][0]['path'], ['alt' => $productMostPopular['product_name']]) ?>
                            <span class="item-name"><?= $productMostPopular['product_name'] ?></span>
                            <?php if($productMostPopular['price'] < $productMostPopular['old_price']): ?>
                                <span class="item-old-price">De R$ <?= $productMostPopular['old_price'] ?></span>
                            <?php endif; ?>
                            <span class="item-price">R$ <?= $productMostPopular['price'] ?></span>
                            <br>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
    <div class="col-lg-4">
        <h3><i class="fa fa-cart-plus"></i> Mais Vendidos</h3>
        <?= $this->Form->input('best-sellers-subcat', ['label' => false, 'options' => $subCategoriesName, 'class' => 'form-control', 'empty' => 'Todas Subcategorias', 'id' => 'best-sellers-subcat']) ?>
        <div id="best-sellers-container">
            <ul id="best-sellers-products">
                <?php foreach($productsBestSeller as $productBestSeller): ?>
                    <li>
                        <div class="item-block">
                            <?= $this->Html->image($productBestSeller['medias'][0]['path'], ['alt' => $productBestSeller['product_name']]) ?>
                            <span class="item-name"><?= $productBestSeller['product_name'] ?></span>
                            <?php if($productBestSeller['price'] < $productBestSeller['old_price']): ?>
                                <span class="item-old-price">De R$ <?= $productBestSeller['old_price'] ?></span>
                            <?php endif; ?>
                            <span class="item-price">R$ <?= $productBestSeller['price'] ?></span>
                            <br>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
    <div class="col-lg-4">
        <h3><i class="fa fa-calendar"></i> Lançamentos</h3>
        <?= $this->Form->input('releases-subcat', ['label' => false, 'options' => $subCategoriesName, 'class' => 'form-control', 'empty' => 'Todas Subcategorias', 'id' => 'releases-subcat']) ?>
        <div id="releases-container">
            <ul id="releases-products">
                <?php foreach($productsNewer as $productNewer): ?>
                    <li>
                        <div class="item-block">
                            <?= $this->Html->image($productNewer['medias'][0]['path'], ['alt' => $productNewer['product_name']]) ?>
                            <span class="item-name"><?= $productNewer['product_name'] ?></span>
                            <?php if($productNewer['price'] < $productNewer['old_price']): ?>
                                <span class="item-old-price">De R$ <?= $productNewer['old_price'] ?></span>
                            <?php endif; ?>
                            <span class="item-price">R$ <?= $productNewer['price'] ?></span>
                            <br>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
</div>