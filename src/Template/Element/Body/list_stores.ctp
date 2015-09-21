<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Lista de Lojas em seu Nome</h3>
        </div>
        <div class="panel-body overflow">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th><?= __('Id') ?></th>
                    <th><?= __('Nome') ?></th>
                    <th><?= __('Criada') ?></th>
                    <th><?= __('Modificada') ?></th>
                    <th><?= __('Tipo') ?></th>
                    <th><?= __('Descrição') ?></th>
                </tr>
                </thead>
                <tbody>
                    <?php foreach($stores as $store): ?>
                        <tr>
                            <td>
                                <?= $store['id'] ?>
                            </td>
                            <td>
                                <?= $this->Html->link($store['store_name'], ['controller' => 'Stores', 'action' => 'view', $store['id']], ['target' => '_blank']) ?>
                            </td>
                            <td>
                                <?= $store['created'] ?>
                            </td>
                            <td>
                                <?= $store['modified'] ?>
                            </td>
                            <td>
                            </td>
                            <td>
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