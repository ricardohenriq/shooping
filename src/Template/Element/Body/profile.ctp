<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <button type="button" class="btn btn-primary btn-xs pull-right" data-toggle="modal" data-target="#edit_profile_modal">Edit</button>
            <h3 class="panel-title text-center title">Meu Perfil</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->image($user['picture'], ['alt' => '', 'class' => 'picture-left']) ?>
            <p class="user-information">
                <span class="title">Nome:</span>&nbsp;<?= $user['username'] ?><br>
                <span class="title">Email:</span>&nbsp;<?= $user['email'] ?><br>
                <span class="title">Signed up:</span>&nbsp;<?= $user['created'] ?><br>
                <span class="title">Last activity:</span>&nbsp;<?= $user['modified'] ?><br>
                <span class="title">Age:</span>&nbsp;19 Years (1997/09/12)<br>
            </p>
            <div class="summary">
                <div class="comments-summary">
                    <h3><i class="fa fa-comment"></i> Comentários</h3>
                    <hr>
                    <div>
                        <span class="badge">42</span>
                        <?= $this->Html->link('Comentários ainda não respondidos',
                        ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
                    </div>
                    <div>
                        <span class="badge">23</span>
                        <?= $this->Html->link('Comentários Respondidos',
                        ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
                    </div>
                </div>
                <div class="ads-summary">
                    <h3><i class="fa fa-bullhorn"></i> Anúncios</h3>
                    <hr>
                    <div>
                        <span class="badge">42</span>
                        <?= $this->Html->link('Anúncios Ativos',
                        ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
                    </div>
                    <div>
                        <span class="badge">23</span>
                        <?= $this->Html->link('Anúncios Pausados',
                        ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
                    </div>
                    <div>
                        <span class="badge">23</span>
                        <?= $this->Html->link('Anúncios Finalizados',
                        ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
                    </div>
                </div>
                <div class="negotiation-summary">
                    <h3><i class="fa fa-shopping-cart"></i> Negociações</h3>
                    <hr>
                    <div>
                        <span class="badge">42</span>
                        <?= $this->Html->link('Reservas',
                        ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>