<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('New Product Feature'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Features'), ['controller' => 'Features', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Feature'), ['controller' => 'Features', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Products'), ['controller' => 'Products', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Product'), ['controller' => 'Products', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="productFeatures index large-10 medium-9 columns">
    <table cellpadding="0" cellspacing="0">
    <thead>
        <tr>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('feature_value') ?></th>
            <th><?= $this->Paginator->sort('feature_id') ?></th>
            <th><?= $this->Paginator->sort('product_id') ?></th>
            <th><?= $this->Paginator->sort('created') ?></th>
            <th><?= $this->Paginator->sort('modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($productFeatures as $productFeature): ?>
        <tr>
            <td><?= $this->Number->format($productFeature->id) ?></td>
            <td><?= h($productFeature->feature_value) ?></td>
            <td>
                <?= $productFeature->has('feature') ? $this->Html->link($productFeature->feature->id, ['controller' => 'Features', 'action' => 'view', $productFeature->feature->id]) : '' ?>
            </td>
            <td>
                <?= $productFeature->has('product') ? $this->Html->link($productFeature->product->id, ['controller' => 'Products', 'action' => 'view', $productFeature->product->id]) : '' ?>
            </td>
            <td><?= h($productFeature->created) ?></td>
            <td><?= h($productFeature->modified) ?></td>
            <td class="actions">
                <?= $this->Html->link(__('View'), ['action' => 'view', $productFeature->id]) ?>
                <?= $this->Html->link(__('Edit'), ['action' => 'edit', $productFeature->id]) ?>
                <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $productFeature->id], ['confirm' => __('Are you sure you want to delete # {0}?', $productFeature->id)]) ?>
            </td>
        </tr>

    <?php endforeach; ?>
    </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
        </ul>
        <p><?= $this->Paginator->counter() ?></p>
    </div>
</div>
