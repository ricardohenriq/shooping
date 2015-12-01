<div id="filter-pagination" class="col-lg-6 pull-right">
    <div class="inline-pagination-menu">
        Resultado(s) <?= $startEndProducts['startProducts'] ?> - <?= $startEndProducts['endProducts'] ?> de <?= $qtdProducts ?>
        Produtos --
    </div>
    <div class="inline-pagination-menu">
        Itens por página:
        <?= $this->Form->select('products-view', $selectOptionsViews,
        ['class' => 'form-control products-view inline-pagination-menu',
        'id' => 'products-view' , 'empty' => $productsView, 'onchange' => 'redirect(this)']) ?>
    </div>
</div>