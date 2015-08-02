<div id="filter-pagination" class="col-lg-7 pull-right">
    <div class="inline-pagination-menu">
        Resultado(s) 1 - 30 de <= qtdProducts ?>
    </div>
    <div class="inline-pagination-menu">
        Itens por página:
        <?= $this->Form->select('products-view', ['30' => '30', '60' => '60', '90' => '90'], ['class' => 'form-control products-view inline-pagination-menu']) ?>
    </div>
    &nbsp;
    <div class="inline-pagination-menu">
        Página:
        <p class="inline-pagination-menu"><?= $this->Paginator->counter() ?></p>
    </div>
</div>