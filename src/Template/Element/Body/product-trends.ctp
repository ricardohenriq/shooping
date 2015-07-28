<div class="col-lg-10 col-lg-offset-1" style="boder:2px solid red">
    <div class="col-lg-4">
        <h3><i class="fa fa-user-plus"></i> Mais Populares</h3>
        <?= $this->Form->create(null, ['url' => ['controller' => '', 'action' => ''], 'type' => 'post', 'id' => '', 'class' => 'form-horizontal']) ?>
            <?= $this->Form->input('most-popular', ['label' => false, 'options' => $subCategories, 'class' => 'form-control']) ?>
        <?= $this->Form->end() ?>
        <ul id="most-popular-products">
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product1.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product2.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product3.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product4.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
        </ul>
    </div>
    <div class="col-lg-4">
        <h3><i class="fa fa-cart-plus"></i> Mais Vendidos</h3>
        <?= $this->Form->create(null, ['url' => ['controller' => '', 'action' => ''], 'type' => 'post', 'id' => '', 'class' => 'form-horizontal']) ?>
            <?= $this->Form->input('most-popular', ['label' => false, 'options' => $subCategories, 'class' => 'form-control']) ?>
        <?= $this->Form->end() ?>
        <ul id="best-sellers-products">
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product1.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product2.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product3.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product4.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
        </ul>
    </div>
    <div class="col-lg-4">
        <h3><i class="fa fa-calendar"></i> Lançamentos</h3>
        <?= $this->Form->create(null, ['url' => ['controller' => '', 'action' => ''], 'type' => 'post', 'id' => '', 'class' => 'form-horizontal']) ?>
            <?= $this->Form->input('most-popular', ['label' => false, 'options' => $subCategories, 'class' => 'form-control']) ?>
        <?= $this->Form->end() ?>
        <ul id="releases-products">
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product1.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product2.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product3.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
            <li>
                <div class="item-block">
                    <?= $this->Html->image('products/product4.jpg', ['alt' => 'Produto 1']) ?>
                    <span class="item-name">Nome produto</span>
                    <span class="item-old-price">De R$ 4.948,90</span>
                    <span class="item-price">R$ 81,90</span>
                    <span class="item-payment-form">Ou 2x de R$ 40,95 sem juros</span><br>
                </div>
            </li>
        </ul>
    </div>
</div>