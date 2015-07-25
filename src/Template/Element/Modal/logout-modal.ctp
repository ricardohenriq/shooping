<div class="modal fade" id="logout_modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center title" id="myModalLabel">Logout</h4>
            </div>
            <div class="modal-body">
                <?= $this->Form->create(null, ['url' => ['controller' => 'Users', 'action' => 'logout'], 'type' => 'post', 'id' => 'logout-form', 'class' => 'form-horizontal']) ?>
                    <div class="form-group text-center">
                        <div class="col-md-12 span7 text-center">
                            <p>Você deseja realmente sair do Stores ?</p>
                            <?= $this->Form->button('Permanecer', ['type' => 'button', 'class' => 'btn btn-default', 'data-dismiss' => 'modal']) ?>
                            <?= $this->Form->button('Logout', ['type' => 'submit', 'class' => 'btn btn-danger']) ?>
                        </div>
                    </div>
                <?= $this->Form->end() ?>
            </div>
        </div>
    </div>
</div>