<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Produtos Favoritos</h3>
        </div>
        <div class="panel-body overflow">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th><?= __('Id') ?></th>
                        <th><?= __('Nome') ?></th>
                        <th><?= __('Loja') ?></th>
                        <th><?= __('Criada') ?></th>
                        <th><?= __('Modificada') ?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($products as $product): ?>
                        <tr>
                            <td>
                                <?= $product['id'] ?>
                            </td>
                            <td>
                                <?= $this->Html->link($product['product_name'],['controller' => 'Products', 'action' => 'view', $product['id']]) ?>
                            </td>
                            <td>

                            </td>
                            <td>
                                <?= $product['created'] ?>
                            </td>
                            <td>
                                <?= $product['modified'] ?>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <div class="panel-footer span7 text-center">
            <?= $this->Html->link('Mais dúvidas? Envie-nos um Email',['controller' => 'Pages', 'action' => 'display', 'email']) ?>
        </div>
    </div>
</div>