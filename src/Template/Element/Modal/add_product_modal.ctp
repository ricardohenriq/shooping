<div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center" id="myModalLabel">Cadastrar Produtos</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <form class="form-horizontal" action="#" method="post">
                        <div class=" dropzone" id="addProductDropzone">
                            <div class="dropzone-previews"></div> <!-- this is were the previews should be shown. -->
                            <div class="fallback">
                                <!-- this is the fallback if JS isn't working -->
                                <input name="file" type="file" multiple>
                            </div>
                            <div class="dz-message" data-dz-message><span>Arraste as fotos do Produto</span></div>
                        </div>
                    </form>
                </div>
                <div class="row" id="add-products-properties">
                    <div class="form-group">
                        <label for="product_name" class="control-label col-md-6">Nome do Produto</label>
                        <div class="col-md-6">
                            <?= $this->Form->input('product_name', ['label' => false, 'class' => 'form-control', 'id' => 'product_name']) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="quantity" class="control-label col-md-6">Quantidade de Produtos</label>
                        <div class="col-md-6">
                            <?= $this->Form->input('quantity', ['label' => false, 'class' => 'form-control', 'id' => 'quantity']) ?>
                        </div>
                    </div>
					<div class="form-group">
                        <label for="sub_category_id" class="control-label col-md-6">Subcaterias</label>
                        <div class="col-md-6">
                            <select name="sub_category_id" class="form-control">
								<option value="1">Subcategoria 1</option>
								<option value="2">Subcategoria 2</option>
								<option value="3">Subcategoria 3</option>
                            </select>
                        </div>
                    </div>
					<div class="form-group">
                        <label for="store_id" class="control-label col-md-6">Loja</label>
                        <div class="col-md-6">
                            <select name="store_id" class="form-control">
								<option value="1">Loja 1</option>
								<option value="2">Loja 2</option>
								<option value="3">Loja 3</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="control-label col-md-6">Descrição do Produto</label>
                        <div class="col-md-6">
                            <textarea rows="6"  name="description" id="description"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="quantity" class="control-label col-md-6">Quantidade de Produtos</label>
                        <div class="col-md-6">
                            <div class="input-group">
                                <span class="input-group-addon" id="price-addon">R$</span>
                                <input type="text" class="form-control" id="price" name="price" aria-describedby="price-addon">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="control-label col-md-6">Descrição do Produto</label>
                        <div class="col-md-6">
                            <select class="form-control" name="status" id="status">
                                <option value="1">Exibir</option>
                                <option value="1">Não Exibir</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row" id="add-products-complement">
                    <div id="features-insert-container">
                        <label for="feature-insert" class="control-label">Select list:</label>
                        <select class="form-control" id="feature-insert">
                        </select>
                        <button id="insert-feature-button" name="insert-feature-button" class="btn btn-success" style="display:inline">Inserir caracteristica</button>
                    </div>
                    <hr>
                    <div id="features-container">

                    </div>
                </div>
                <div>
                    <button id="reset-all" name="reset-all" class="btn btn-danger">Reset</button>
                    <button id="submit-all" name="submit-all" class="btn btn-info">Cadastrar</button>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>