<div class="modal fade" id="edit_profile_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center title" id="myModalLabel">Editar Perfil</h4>
            </div>
            <div class="modal-body">
                <span class="message"></span>
                <?= $this->Form->create($user, ['url' => ['controller' => 'Users', 'action' => 'edit'], 'type' => 'post', 'id' => 'edit-profile-form', 'class' => 'form-horizontal']) ?>
                    <div class="form-group">
                        <label for="username" class="control-label col-md-3">Seu Nome</label>
                        <div class="col-md-9">
                            <?= $this->Form->input('username', ['label' => false, 'class' => 'form-control', 'placeholder' => 'Nome', 'id' => 'username']) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="username" class="control-label col-md-3">Seu Nome</label>
                        <div class="col-md-9">
                            <?= $this->Form->input('email', ['label' => false, 'class' => 'form-control', 'placeholder' => 'Nome', 'id' => 'email']) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="control-label col-md-3"><?= __('Nova Senha') ?></label>
                        <div class="col-md-9">
                            <?= $this->Form->input('password', ['label' => false, 'class' => 'form-control', 'id' => 'password', 'data-html' => 'true',
                                'value' => '']) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="re-new-password" class="control-label col-md-3"><?= __('Redigite Nova Senha') ?></label>
                        <div class="col-md-9">
                            <?= $this->Form->input('re-new-password', ['label' => false, 'class' => 'form-control', 'id' => 're-new-password', 'type' => 'password']) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="old-password" class="control-label col-md-3"><?= __('Digite Senha Antiga') ?></label>
                        <div class="col-md-9">
                            <?= $this->Form->input('old-password', ['label' => false, 'class' => 'form-control', 'id' => 'old-password', 'type' => 'password']) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="profile-pic" class="control-label col-md-3"><?= __('Sua foto de Perfil') ?></label>
                        <div class="col-md-9">
                            <?= $this->Form->input('profile-pic', ['type' => 'file', 'label' => false, 'class' => 'form-control', 'id' => 'profile-pic']) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="user-description" class="control-label col-md-3"><?= __('Sua Descrição') ?></label>
                        <div class="col-md-9">
                            <?= $this->Form->input('user-description', ['type' => 'textarea', 'escape' => false, 'cols' => '60', 'rows' => '10', 'id' => 'user-description',
                                'maxlength' => '500', 'placeholder' => 'Descrição', 'label' => false]) ?>
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <div class="col-md-6 col-md-offset-3">
                            <?= $this->Form->button('Reset', ['type' => 'reset', 'class' => 'btn btn-danger']) ?>
                            <?= $this->Form->button('Atualizar Perfil', ['type' => 'button', 'class' => 'btn btn-info', 'id' => 'submit-edit-profile-form',
                                'onclick' => 'editAccount(\'/users/edit/' . $userId . '\')']) ?>
                        </div>
                    </div>
                <?= $this->Form->end() ?>
            </div>
        </div>
    </div>
</div>