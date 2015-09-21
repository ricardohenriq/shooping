<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Lista de Reservas em seu Nome</h3>
        </div>
        <div class="panel-body overflow">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th><?= __('Id Reserva') ?></th>
                        <th><?= __('Id Produto') ?></th>
                        <th><?= __('Quantidade') ?></th>
                        <th><?= __('Criada') ?></th>
                        <th><?= __('Modificada') ?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($bookings as $booking): ?>
                        <tr>
                            <td>
                                <?= $booking['id'] ?>
                            </td>
                            <td>
                                <?= $this->Html->link($booking['product_id'], ['controller' => 'Product', 'action' => 'view', $booking['product_id']], ['target' => '_blank']) ?>
                            </td>
                            <td>
                                <?= $booking['quantity'] ?>
                            </td>
                            <td>
                                <?= $booking['created'] ?>
                            </td>
                            <td>
                                <?= $booking['modified'] ?>
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