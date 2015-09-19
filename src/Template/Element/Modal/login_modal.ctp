<div class="modal fade" id="login_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center title" id="myModalLabel">Login</h4>
            </div>
            <div class="modal-body">
                <span class="message text-center"></span>
                <form id="login-form" class="form-horizontal">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="email" class="control-label col-md-3">Your Email (login)</label>
                            <div class="col-md-9">
                                <?= $this->Form->input('email', ['label' => false, 'class' => 'form-control', 'placeholder' => 'Email']) ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="control-label col-md-3">Password</label>
                            <div class="col-md-9">
                                <?= $this->Form->input('password', ['label' => false, 'class' => 'form-control', 'placeholder' => 'Password']) ?>
                            </div>
                        </div>
                        <div class="checkbox text-center">
                            <label><input type="checkbox" id="remember-me" name="remember-me">Remember me on this computer</label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div id="member_benefits">
                            Not yet a Member? Here is what you can do with an Account<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>- You can save your playlist</b><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>- You can buy a Premium Membership</b><br>
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <div class="col-md-6 col-md-offset-3">
                            <?= $this->Form->button('Limpar', ['type' => 'reset', 'class' => 'btn btn-danger']) ?>
                            <?= $this->Form->button('Login', ['type' => 'button', 'class' => 'btn btn-info',
                            'id' =>'submit-login']) ?>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>