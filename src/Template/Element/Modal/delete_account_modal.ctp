<div class="modal fade" id="delete_account_modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center title" id="myModalLabel">Deletar Conta</h4>
            </div>
            <div class="modal-body">
                <span class="message"></span>
                <form id="delete-account-form" class="form-horizontal">
                    <div class="form-group text-center">
                        <div class="col-md-12 span7 text-center">
                            <p> <?= __('Você deseja realmente "Cancelar sua Conta": {0} ? (Email: {1} e ID: {2})',
                            $username, $email ,$userId) ?></p>
                            <?= $this->Form->button('Manter Conta Avita', ['type' => 'button', 'class' => 'btn btn-success', 'data-dismiss' => 'modal']) ?>
                            <?= $this->Form->button('Deletar Conta', ['type' => 'button', 'class' => 'btn btn-danger', 'id' => 'submit-delete-form',
                                'onclick' => 'deleteAccount(\'/users/delete/' . $userId . '\')']) ?>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>