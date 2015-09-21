<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Lojas Favoritos</h3>
        </div>
        <div class="panel-body overflow">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th><?= __('Id') ?></th>
                        <th><?= __('Nome') ?></th>
                        <th><?= __('Criada') ?></th>
                        <th><?= __('Modificada') ?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($favoriteStores as $favoriteStore): ?>
                        <tr>
                            <td>
                                <?= $favoriteStore['id'] ?>
                            </td>
                            <td>
                                <?= $this->Html->link($favoriteStore['store_name'],['controller' => 'Stores', 'action' => 'view', $favoriteStore['id']]) ?>
                            </td>
                            <td>
                                <?= $favoriteStore['created'] ?>
                            </td>
                            <td>
                                <?= $favoriteStore['modified'] ?>
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