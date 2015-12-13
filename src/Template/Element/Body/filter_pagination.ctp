<div id="filter-pagination" class="pull-right">
    <div class="inline-pagination-menu">
        <?= $this->Paginator->counter() ?>
        Produtos -- 
    </div>
    <div class="inline-pagination-menu">
        Itens por página:
        <select name="products-view" class="form-control products-view inline-pagination-menu" id="products-view" onchange="redirect(this)">
			<option>3</option>
			<option>6</option>
			<option>9</option>
		</select>
    </div>
</div>