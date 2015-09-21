<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title"><?= __('Lista de Ofertas {0}', $type) ?></h3>
        </div>
        <div class="panel-body overflow">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th><?= __('Id') ?></th>
                    <th><?= __('Nome') ?></th>
                    <th><?= __('Descrição') ?></th>
                    <th><?= __('Criada') ?></th>
                    <th><?= __('Modificada') ?></th>
                </tr>
                </thead>
                <tbody>
                    <?php foreach($offers as $offer): ?>
                        <tr>
                            <td>
                                <?= $offer['id'] ?>
                            </td>
                            <td>
                                <?= $this->Html->link($offer['name'], ['controller' => 'Offers', 'action' => 'view', $offer['id']], ['target' => '_blank']) ?>
                            </td>
                            <td>
                                <?= $offer['description'] ?>
                            </td>
                            <td>
                                <?= $offer['created'] ?>
                            </td>
                            <td>
                                <?= $offer['modified'] ?>
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