<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title"><?= __('Lista de Comentários {0}', $answered) ?></h3>
        </div>
        <div class="panel-body overflow">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th><?= __('Id') ?></th>
                    <th><?= __('Comentário') ?></th>
                    <th><?= __('Id Produto') ?></th>
                    <th><?= __('Respondido') ?></th>
                    <th><?= __('Criada') ?></th>
                </tr>
                </thead>
                <tbody>
                    <?php foreach($comments as $comment): ?>
                        <tr>
                            <td>
                                <?= $comment['id'] ?>
                            </td>
                            <td>
                                <?= $comment['comment_text'] ?>
                            </td>
                            <td>
                                <?= $comment['product_id'] ?>
                            </td>
                            <td>
                                <?= $comment['answered'] ?>
                            </td>
                            <td>
                                <?= $comment['created'] ?>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <div class="panel-footer span7 text-center">
            <?= $this->Html->link('Dúvidas? Envie-nos um Email',['controller' => 'Pages', 'action' => 'display', 'email']) ?>
        </div>
    </div>
</div>