<div id="filter-pagination" class="pull-right">
    <div class="inline-pagination-menu">
        Ordenar por:
        <select name="products-order" class="form-control products-order inline-pagination-menu" id="products-order">
			<option value="
				<?php 
					$this->Paginator->templates([
						'sort' => 'http://localhost:8765{{url}}'
					]);
					echo $this->Paginator->sort('product_name');
				?>
			">A - Z</option>
			<option value="
				<?php 
					$this->Paginator->templates([
						'sort' => 'http://localhost:8765{{url}}'
					]);
					echo $this->Paginator->sort('product_name', null, ['direction' => 'desc']);
				?>
			">Z - A</option>
			<option value="
				<?php 
					$this->Paginator->templates([
						'sort' => 'http://localhost:8765{{url}}'
					]);
					echo $this->Paginator->sort('price');
				?>
			">Menor preço</option>
			<option value="
				<?php 
					$this->Paginator->templates([
						'sort' => 'http://localhost:8765{{url}}'
					]);
					echo $this->Paginator->sort('price', null, ['direction' => 'desc']);
				?>
			">Maior preço</option>
		</select>
    </div>
</div>