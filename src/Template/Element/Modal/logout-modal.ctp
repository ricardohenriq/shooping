<div class="modal fade" id="logout_modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center" id="myModalLabel"><span class="title">Logout</span></h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="login-form" action="../controllers/ValidateForm.php" method="post">
                    <div class="form-group text-center">
                        <div class="col-md-12 span7 text-center">
                            <p>Você deseja realmente sair do Eros?</p>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-danger">Logout</button>
                        </div>
                    </div>
                    <input type="hidden" name="logout_form" value="Logout">
                </form>
            </div>
        </div>
    </div>
</div>