<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <button type="button" class="btn btn-primary btn-xs pull-right" data-toggle="modal" data-target="#edit_profile_modal">Edit</button>
            <h3 class="panel-title text-center title">Meu Perfil</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->image('cake_logo.png', ['alt' => '', 'class' => 'user-picture']) ?>
            <div class="user-information">
                <strong>Nome:</strong>&nbsp;<?= $user['username'] ?><br>
                <strong>Email:</strong>&nbsp;<?= $user['email'] ?><br>
                <strong>Signed up:</strong>&nbsp;<?= $user['created'] ?><br>
                <strong>Last activity:</strong>&nbsp;<?= $user['modified'] ?><br>
                <strong>Age:</strong>&nbsp;19 Years (1997/09/12)<br>
            </div>
            <div class="summary">

            </div>
        </div>
    </div>
</div>