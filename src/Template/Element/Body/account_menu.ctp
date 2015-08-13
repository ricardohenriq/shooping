<div class="col-md-3">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Conta Status</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->link('Meu Perfil', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?><br>
            <?= $this->Html->link('Meus Produtos', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?><br>
            <?= $this->Html->link('Meus Comentários', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?><br>
            Email:&nbsp;<?= $this->Html->link('Não Verificado', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Meus Favoritos</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->link('Meus Produtos Favoritos', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?><br>
            <?= $this->Html->link('Meus Lojistas Favoritos', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?><br>
            <?= $this->Html->link('Minhas Subcategorias Favoritas', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?><br>
            <?= $this->Html->link('Minha Lista de Desejos', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Meus Pedidos</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->link('Minhas Reservas', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Minhas Lojas</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->link('Loja 1', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Minhas Ofertas</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->link('Oferta 1', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Outros</h3>
        </div>
        <div class="panel-body">
            <?= $this->Html->link('Mensagens', ['controller' => 'Users', 'action' => '', 'target' => '_blank']) ?>
        </div>
    </div>
</div>