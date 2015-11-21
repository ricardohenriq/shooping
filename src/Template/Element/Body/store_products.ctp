<div class="col-md-9" id="store-products">
    <div class="panel panel-default">
        <div class="panel-heading">
            <button type="button" class="btn btn-primary btn-xs pull-right" data-toggle="modal" data-target="#add-product-modal" id="add-product-button">Adicionar Produto</button>
            <h3 class="panel-title span7 text-center title">Loja Produtos</h3>
        </div>
        <div class="panel-body">
            <div class="view view-first">
                <img src="http://localhost/PROJETOS/ShoppingResources/thumb/hd-externo-portatil-samsung-m3-1tb-usb-3-0-1.jpg">
                <div class="mask">
                    <h2>HD Portatil</h2>

                    <a href="#" class="btn btn-success" title="Detalhes do Produto" data-toggle="modal" data-target="#view-product-modal" id="view-product-button" onclick=""><span class="glyphicon glyphicon-eye-open"></span></a>

                    <a href="#" class="btn btn-info" title="Editar este Produto" data-toggle="modal" data-target="#edit-product-modal" onclick=""><span class="glyphicon glyphicon-pencil"></span></a>

                    <?= $this->Form->postLink('<span class="glyphicon glyphicon-trash"></span>',
                    ['controller' => '', 'action' => '', 0],
                    ['class' => 'btn btn-danger', 'title' => 'Deletar este Produto', 'escape' => false,
                    'confirm' => __('Você deseja realmente deletar o Produto: #{0}?',
                    0)]) ?>
                </div>
            </div>
            <div class="view view-first">
                <img src="http://localhost/PROJETOS/ShoppingResources/thumb/maleta-de-ferramentas-com-142-pecas-br-tools.jpg">
                <div class="mask">
                    <h2>Maleta de Ferramentas</h2>

                    <a href="#" class="btn btn-success" title="Detalhes do Produto" data-toggle="modal" data-target="#view-product-modal" onclick=""><span class="glyphicon glyphicon-eye-open"></span></a>

                    <a href="#" class="btn btn-info" title="Editar este Produto" data-toggle="modal" data-target="#edit-product-modal" onclick=""><span class="glyphicon glyphicon-pencil"></span></a>

                    <?= $this->Form->postLink('<span class="glyphicon glyphicon-trash"></span>',
                    ['controller' => '', 'action' => '', 0],
                    ['class' => 'btn btn-danger', 'title' => 'Deletar este Produto', 'escape' => false,
                    'confirm' => __('Você deseja realmente deletar o Produto: #{0}?',
                    0)]) ?>
                </div>
            </div>
            <div class="view view-first">
                <img src="http://localhost/PROJETOS/ShoppingResources/thumb/tenis-mizuno-prophecy-2-original-frete-gratis-pronta-entrega-1.jpg">
                <div class="mask">
                    <h2>Tenis</h2>

                    <a href="#" class="btn btn-success" title="Detalhes do Produto" data-toggle="modal" data-target="#view-product-modal" onclick=""><span class="glyphicon glyphicon-eye-open"></span></a>

                    <a href="#" class="btn btn-info" title="Editar este Produto" data-toggle="modal" data-target="#edit-product-modal" onclick=""><span class="glyphicon glyphicon-pencil"></span></a>

                    <?= $this->Form->postLink('<span class="glyphicon glyphicon-trash"></span>',
                    ['controller' => '', 'action' => '', 0],
                    ['class' => 'btn btn-danger', 'title' => 'Deletar este Produto', 'escape' => false,
                    'confirm' => __('Você deseja realmente deletar o Produto: #{0}?',
                    0)]) ?>
                </div>
            </div>
            <div class="view view-first">
                <img src="http://localhost/PROJETOS/ShoppingResources/thumb/samsung-galaxy-a5-duos-branco-4g-orange-1.jpg">
                <div class="mask">
                    <h2>Tenis</h2>

                    <a href="#" class="btn btn-success" title="Detalhes do Produto" data-toggle="modal" data-target="#view-product-modal" onclick=""><span class="glyphicon glyphicon-eye-open"></span></a>

                    <a href="#" class="btn btn-info" title="Editar este Produto" data-toggle="modal" data-target="#edit-product-modal" onclick=""><span class="glyphicon glyphicon-pencil"></span></a>

                    <?= $this->Form->postLink('<span class="glyphicon glyphicon-trash"></span>',
                    ['controller' => '', 'action' => '', 0],
                    ['class' => 'btn btn-danger', 'title' => 'Deletar este Produto', 'escape' => false,
                    'confirm' => __('Você deseja realmente deletar o Produto: #{0}?',
                    0)]) ?>
                </div>
            </div>
            <nav class="span7 text-center">
              <ul class="pagination">
                <li>
                  <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                  <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>
        </div>
        <div class="panel-footer span7 text-center">
            <?= $this->Html->link('Alguma dúvida? Envie-nos um Email',['controller' => 'Pages', 'action' => 'display', 'email']) ?>
        </div>
    </div>
</div>