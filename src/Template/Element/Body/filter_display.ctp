<div id="filter-pagination" class="col-lg-4 pull-right">
    <div class="inline-pagination-menu">
        Ordenar por:
        <?= $this->Form->select('products-order', ['most-popular' => 'Mais Visitados', 'most-sold' => 'Mais Vendidos', 'lowest-price' => 'Menor Preço', 'highest-price' => 'Maior Preço'], ['class' => 'form-control products-order inline-pagination-menu']) ?>
    </div>
</div>