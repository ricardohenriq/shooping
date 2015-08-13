<div class="modal fade" id="edit_profile_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center title" id="myModalLabel">Edit your Profile</h4>
            </div>
            <div class="modal-body">
                <?= $this->Form->create($user, ['url' => ['controller' => 'Users', 'action' => 'edit'], 'type' => 'post', 'id' => 'edit-profile-form', 'class' => 'form-horizontal']) ?>

                    <div class="form-group">
                        <label for="username" class="control-label col-md-3">Seu Nome</label>
                        <div class="col-md-9">
                            <?= $this->Form->input('username', ['label' => false, 'class' => 'form-control', 'placeholder' => 'Nome', 'id' => 'username']) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="control-label col-md-3">Password</label>
                        <div class="col-md-9">
                            <?= $this->Form->input('password', ['label' => false, 'class' => 'form-control', 'placeholder' => 'Senha', 'id' => 'password', 'data-html' => 'true']) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="re-password" class="control-label col-md-3">Retype Pass</label>
                        <div class="col-md-9">
                            <?= $this->Form->input('password', ['label' => false, 'class' => 'form-control', 'placeholder' => 'Redigite a Senha', 'name' => 're-password', 'id' => 're-password']) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="profile_pic" class="control-label col-md-3">Your profile Picture</label>
                        <div class="col-md-9">
                            <input type="file" class="form-control" id="profile_pic" name="profile_pic">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="user-description" class="control-label col-md-3">Your Description</label>
                        <div class="col-md-9">
                            <textarea cols=60 id="user-description" rows="10" name="user-description" maxlength="500" placeholder="Descrição"></textarea>
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <div class="col-md-6 col-md-offset-3">
                            <?= $this->Form->button('Reset', ['type' => 'reset', 'class' => 'btn btn-danger']) ?>
                            <?= $this->Form->button('Atualizar Perfil', ['type' => 'submit', 'class' => 'btn btn-info']) ?>
                        </div>
                    </div>
                <?= $this->Form->end() ?>
            </div>
        </div>
    </div>
</div>