<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title"><?= __('Subcategorias Favoritas') ?></h3>
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
                    <?php foreach($favoriteSubcategories as $favoriteSubcategory): ?>
                        <tr>
                            <td>
                                <?= $favoriteSubcategory['id'] ?>
                            </td>
                            <td>
                                <?= $this->Html->link($favoriteSubcategory['sub_category_name'],['controller' => 'Stores', 'action' => 'view', $favoriteSubcategory['id']]) ?>
                            </td>
                            <td>
                                <?= $favoriteSubcategory['created'] ?>
                            </td>
                            <td>
                                <?= $favoriteSubcategory['modified'] ?>
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