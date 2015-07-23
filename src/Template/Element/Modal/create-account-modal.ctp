<div class="modal fade" id="create_account_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" style="z-index: 1050">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center" id="myModalLabel"><span class="title">Create Account</span></h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="create-account-form" action="" method="post">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="email_ca" class="control-label col-md-3">Your Email (login)</label>
                            <div class="col-md-9">
                                <input type="email" class="form-control" id="email_ca" name="email_ca" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="pass_ca" class="control-label col-md-3">Password</label>
                            <div class="col-md-9">
                                <input type="password" class="form-control" id="pass_ca" name="pass_ca" placeholder="Password" data-html="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="re_pass_ca" class="control-label col-md-3">Retype Pass</label>
                            <div class="col-md-9">
                                <input type="password" class="form-control" name="re_pass_ca" placeholder="Retype Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="control-label col-md-3">Name</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="name" placeholder="Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birthdate" class="control-label col-md-3">Birthdate</label>
                            <div class="col-md-9 input-group date">
                                <input type="text" class="form-control" name="birthdate"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sex" class="control-label col-md-3">Sex</label>
                            <div class="col-md-9">
                                <select class="form-control" name="sex">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                </select>
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
                            <button type="reset" class="btn btn-danger">Reset</button>
                            <button type="submit" class="btn btn-info">Create Account</button>
                        </div>
                    </div>
                    <input type="hidden" name="create_account_form" value="Create Account">
                </form>
            </div>
        </div>
    </div>
</div>