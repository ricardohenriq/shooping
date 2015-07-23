<div class="modal fade" id="edit_profile_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center title" id="myModalLabel">Edit your Profile</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_profile_form" action="../PHP/ValidateForm.php" method="post">
                    <div class="form-group">
                        <label for="name" class="control-label col-md-3">Your Name</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="birthdate" class="control-label col-md-3">Your Birthdate</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="birthdate" name="birthdate" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="gender" class="control-label col-md-3">Your Gender</label>
                        <div class="col-md-9">
                            <select class="form-control" name="gender">
                                <option value="1">Homem</option>
                                <option value="2">Mulher</option>
                                <option value="3">Travesti</option>
                                <option value="4">Gay</option>
                                <option value="5">Transexual</option>
                                <option value="6">Outro</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="profile_pic" class="control-label col-md-3">Your profile Picture</label>
                        <div class="col-md-9">
                            <input type="file" class="form-control" id="profile_pic" name="profile_pic">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="about_me" class="control-label col-md-3">Your Description</label>
                        <div class="col-md-9">
                            <textarea cols=60 id="about_me" rows="10" name="about_me" maxlength="500" placeholder="About Me"></textarea>
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <div class="col-md-6 col-md-offset-3">
                            <button type="reset" class="btn btn-danger">Reset</button>
                            <button type="submit" class="btn btn-info">Update my Profile</button>
                        </div>
                    </div>
                    <input type="hidden" name="edit_profile_form" value="Edit Profile">
                </form>
            </div>
        </div>
    </div>
</div>