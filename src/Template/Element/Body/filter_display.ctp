<div id="filter-pagination" class="col-lg-4 pull-right">
    <div class="inline-pagination-menu">
        Ordenar por:
        <?= $this->Form->select('products-order', $selectOptionsOrderView,
        ['class' => 'form-control products-order inline-pagination-menu',
        'empty' => $orderView, 'onchange' => 'redirect(this)']) ?>
    </div>
</div>