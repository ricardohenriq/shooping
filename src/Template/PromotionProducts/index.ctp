<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('New Promotion Product'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Products'), ['controller' => 'Products', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Product'), ['controller' => 'Products', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Promotions'), ['controller' => 'Promotions', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Promotion'), ['controller' => 'Promotions', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="promotionProducts index large-10 medium-9 columns">
    <table cellpadding="0" cellspacing="0">
    <thead>
        <tr>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('product_id') ?></th>
            <th><?= $this->Paginator->sort('promotion_id') ?></th>
            <th><?= $this->Paginator->sort('promotion_price') ?></th>
            <th><?= $this->Paginator->sort('promotion_quantity') ?></th>
            <th><?= $this->Paginator->sort('created') ?></th>
            <th><?= $this->Paginator->sort('modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($promotionProducts as $promotionProduct): ?>
        <tr>
            <td><?= $this->Number->format($promotionProduct->id) ?></td>
            <td>
                <?= $promotionProduct->has('product') ? $this->Html->link($promotionProduct->product->id, ['controller' => 'Products', 'action' => 'view', $promotionProduct->product->id]) : '' ?>
            </td>
            <td>
                <?= $promotionProduct->has('promotion') ? $this->Html->link($promotionProduct->promotion->id, ['controller' => 'Promotions', 'action' => 'view', $promotionProduct->promotion->id]) : '' ?>
            </td>
            <td><?= $this->Number->format($promotionProduct->promotion_price) ?></td>
            <td><?= $this->Number->format($promotionProduct->promotion_quantity) ?></td>
            <td><?= h($promotionProduct->created) ?></td>
            <td><?= h($promotionProduct->modified) ?></td>
            <td class="actions">
                <?= $this->Html->link(__('View'), ['action' => 'view', $promotionProduct->id]) ?>
                <?= $this->Html->link(__('Edit'), ['action' => 'edit', $promotionProduct->id]) ?>
                <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $promotionProduct->id], ['confirm' => __('Are you sure you want to delete # {0}?', $promotionProduct->id)]) ?>
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
