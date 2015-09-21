<div class="col-md-3">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Conta</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->link('Meu Perfil', ['controller' => 'Users', 'action' => 'view', $userId]) ?><br>
            <?= $this->Html->link('Minhas Reservas', ['controller' => 'Bookings', 'action' => 'myBookings'], ['target' => '_blank']) ?><br>
            <?= $this->Html->link('Meus Comentários', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?><br>
            Email:&nbsp;<?= $this->Html->link('Não Verificado', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Meus Favoritos</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->link('Meus Produtos Favoritos', ['controller' => 'Products', 'action' => 'favoriteProducts'], ['target' => '_blank']) ?><br>
            <?= $this->Html->link('Meus Lojistas Favoritos', ['controller' => 'Stores', 'action' => 'favoriteStores'], ['target' => '_blank']) ?><br>
            <?= $this->Html->link('Minhas Subcategorias Favoritas', ['controller' => 'Users', 'action' => ''], ['target' => '_blank']) ?><br>
            <?= $this->Html->link('Minha Lista de Desejos', ['controller' => 'Users', 'action' => ''], ['target' => '_blank']) ?>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">
                <?= $this->Html->link('Minhas Lojas', ['controller' => 'Stores', 'action' => 'myStores']) ?>
            </h3>
        </div>
        <div class="panel-body">
            <?php foreach($stores as $store): ?>
                <?= $this->Html->link($store['store_name'], ['controller' => 'Stores', 'action' => 'view', $store['id']], ['target' => '_blank']) ?>
            <?php endforeach; ?>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Minhas Ofertas</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->link('Oferta 1', ['controller' => 'Users', 'action' => ''], ['target' => '_blank']) ?>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Outros</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->link('Mensagens', ['controller' => 'Users', 'action' => ''], ['target' => '_blank']) ?>
        </div>
    </div>
</div>