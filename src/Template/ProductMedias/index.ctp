<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('New Product Media'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Products'), ['controller' => 'Products', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Product'), ['controller' => 'Products', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Medias'), ['controller' => 'Medias', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Media'), ['controller' => 'Medias', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="productMedias index large-10 medium-9 columns">
    <table cellpadding="0" cellspacing="0">
    <thead>
        <tr>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('product_id') ?></th>
            <th><?= $this->Paginator->sort('media_id') ?></th>
            <th><?= $this->Paginator->sort('created') ?></th>
            <th><?= $this->Paginator->sort('modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($productMedias as $productMedia): ?>
        <tr>
            <td><?= $this->Number->format($productMedia->id) ?></td>
            <td>
                <?= $productMedia->has('product') ? $this->Html->link($productMedia->product->id, ['controller' => 'Products', 'action' => 'view', $productMedia->product->id]) : '' ?>
            </td>
            <td>
                <?= $productMedia->has('media') ? $this->Html->link($productMedia->media->id, ['controller' => 'Medias', 'action' => 'view', $productMedia->media->id]) : '' ?>
            </td>
            <td><?= h($productMedia->created) ?></td>
            <td><?= h($productMedia->modified) ?></td>
            <td class="actions">
                <?= $this->Html->link(__('View'), ['action' => 'view', $productMedia->id]) ?>
                <?= $this->Html->link(__('Edit'), ['action' => 'edit', $productMedia->id]) ?>
                <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $productMedia->id], ['confirm' => __('Are you sure you want to delete # {0}?', $productMedia->id)]) ?>
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
