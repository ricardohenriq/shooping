<div class="modal fade" id="login_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center" id="myModalLabel"><span class="title">Login</span></h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="login-form" action="#" method="post">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="input_email" class="control-label col-md-3">Your Email (login)</label>
                            <div class="col-md-9">
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input_password" class="control-label col-md-3">Password</label>
                            <div class="col-md-9">
                                <input type="password" class="form-control" id="pass" name="pass" placeholder="Password">
                            </div>
                        </div>
                        <div class="checkbox text-center">
                            <label><input type="checkbox" id="remember_me" name="remember_me">Remember me on this computer</label>
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
                            <button type="reset" class="btn btn-danger">Reset</button>
                            <button type="submit" class="btn btn-info">Login</button>
                        </div>
                    </div>
                    <input type="hidden" name="login_form" value="Login">
                </form>
            </div>
        </div>
    </div>
</div>