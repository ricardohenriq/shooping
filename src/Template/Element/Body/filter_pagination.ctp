<div id="filter-pagination" class="pull-right">
    <div class="inline-pagination-menu">
        <?= $this->Paginator->counter() ?>
        Páginas -- 
    </div>
    <div class="inline-pagination-menu">
        Itens por página:
        <select name="products-view" class="form-control products-view inline-pagination-menu" id="products-view">
			<option value="3">3</option>
			<option value="6">6</option>
			<option value="9">9</option>
		</select>
    </div>
</div>