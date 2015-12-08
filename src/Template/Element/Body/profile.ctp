<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <?= $this->Form->button(__('Editar Perfil'), ['type' => 'button', 'class' => 'btn btn-primary btn-xs pull-right',
            'data-toggle' => 'modal', 'data-target' => '#edit_profile_modal']) ?>
            <h3 class="panel-title text-center title">Meu Perfil</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->image('face200x200.png', ['alt' => '', 'class' => 'picture-left']) ?>
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
                        <span class="badge"><?= $quantityUnansweredComments ?></span>
                        <?= $this->Html->link('Comentários ainda não respondidos',
                        ['controller' => 'Comments', 'action' => 'myComments', 1], ['target' => '_blank']) ?>
                    </div>
                    <div>
                        <span class="badge"><?= $quantityAnsweredComments ?></span>
                        <?= $this->Html->link('Comentários Respondidos',
                        ['controller' => 'Comments', 'action' => 'myComments', 2], ['target' => '_blank']) ?>
                    </div>
                </div>
                <div class="ads-summary">
                    <h3><i class="fa fa-bullhorn"></i> Anúncios</h3>
                    <hr>
                    <div>
                        <span class="badge"><?= $quantityActiveOffers ?></span>
                        <?= $this->Html->link('Ofertas Ativos',
                        ['controller' => 'OfferBanners', 'action' => 'myOffers', 1], ['target' => '_blank']) ?>
                    </div>
                    <div>
                        <span class="badge"><?= $quantityPausedOffers ?></span>
                        <?= $this->Html->link('Ofertas Pausadas',
                        ['controller' => 'OfferBanners', 'action' => 'myOffers', 2], ['target' => '_blank']) ?>
                    </div>
                    <div>
                        <span class="badge"><?= $quantityEndedOffers ?></span>
                        <?= $this->Html->link('Ofertas Finalizados',
                        ['controller' => 'OfferBanners', 'action' => 'myOffers', 3], ['target' => '_blank']) ?>
                    </div>
                </div>
                <div class="negotiation-summary">
                    <h3><i class="fa fa-shopping-cart"></i> Negociações</h3>
                    <hr>
                    <div>
                        <span class="badge"><?= $quantityBookings ?></span>
                        <?= $this->Html->link('Reservas',
                        ['controller' => 'Bookings', 'action' => 'myBookings'], ['target' => '_blank']) ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <?= $this->Form->button(__('Deletar Conta'), ['type' => 'button', 'class' => 'btn btn-danger btn-xs',
            'data-toggle' => 'modal', 'data-target' => '#delete_account_modal']) ?>
        </div>
    </div>
</div>