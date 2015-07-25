
<div class="modal fade" id="create_account_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" style="z-index: 1050">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center" id="myModalLabel"><span class="title">Create Account</span></h4>
            </div>
            <div class="modal-body">
                <?= $this->Form->create(null, ['url' => ['controller' => 'Users', 'action' => 'add'], 'type' => 'post', 'id' => 'create-account-form', 'class' => 'form-horizontal']) ?>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="email_ca" class="control-label col-md-3">Your Email (login)</label>
                            <div class="col-md-9">
                                <?= $this->Form->input('email', ['label' => false, 'class' => 'form-control', 'placeholder' => 'Email']) ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="pass_ca" class="control-label col-md-3">Password</label>
                            <div class="col-md-9">
                                <?= $this->Form->input('password', ['label' => false, 'class' => 'form-control', 'placeholder' => 'Senha', 'id' => 'pass_ca', 'data-html' => 'true']) ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="re_pass" class="control-label col-md-3">Retype Pass</label>
                            <div class="col-md-9">
                                <?= $this->Form->input('password', ['label' => false, 'class' => 'form-control', 'placeholder' => 'Redigite a Senha', 'name' => 're_pass_ca', 'id' => 're_pass_ca']) ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="control-label col-md-3">Name</label>
                            <div class="col-md-9">
                                <?= $this->Form->input('username', ['label' => false, 'class' => 'form-control', 'placeholder' => 'Nome']) ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birthdate" class="control-label col-md-3">Birthdate</label>
                            <div class="col-md-9 input-group date">
                                <?= $this->Form->input('nascimento', ['label' => false, 'class' => 'form-control', 'placeholder' => '12/12/2012']) ?>
                                <span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sex" class="control-label col-md-3">Tipo</label>
                            <div class="col-md-9">
                                <?= $this->Form->input('user_type_id', ['label' => false, 'options' => $userTypes, 'class' => 'form-control']) ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div id="member_benefits">
                            Not yet a Member? Here is what you can do with an Account<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>- You can save your playlist</b><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>- You can buy a Premium Membership</b><br>
                        </div>
                        <br><br>
                        <div id="reCaptcha" style="border:2px solid #000000; height:150px">
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <div class="col-md-6 col-md-offset-3">
                            <?= $this->Form->button('Reset', ['type' => 'reset', 'class' => 'btn btn-danger']) ?>
                            <?= $this->Form->button('Criar Conta', ['type' => 'submit', 'class' => 'btn btn-info']) ?>
                        </div>
                    </div>
                <?= $this->Form->end() ?>
            </div>
        </div>
    </div>
</div>