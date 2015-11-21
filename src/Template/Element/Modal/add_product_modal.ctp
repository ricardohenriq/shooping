<div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center" id="myModalLabel">Cadastrar Produtos</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal dropzone" id="myDropzone" action="#" method="post">
                    <div class="dropzone-previews"></div> <!-- this is were the previews should be shown. -->
                    <div class="fallback">
                        <!-- this is the fallback if JS isn't working -->
                        <input name="file" type="file" multiple>
                    </div>
                    <div class="dz-message" data-dz-message><span>Arraste as fotos do Produto</span></div>
                </form>
                <div id="add-products-complement">
                    <hr>
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