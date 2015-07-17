<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('New Promotion'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Promotion Products'), ['controller' => 'PromotionProducts', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Promotion Product'), ['controller' => 'PromotionProducts', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="promotions index large-10 medium-9 columns">
    <table cellpadding="0" cellspacing="0">
    <thead>
        <tr>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('promotion_name') ?></th>
            <th><?= $this->Paginator->sort('duration') ?></th>
            <th><?= $this->Paginator->sort('created') ?></th>
            <th><?= $this->Paginator->sort('modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($promotions as $promotion): ?>
        <tr>
            <td><?= $this->Number->format($promotion->id) ?></td>
            <td><?= h($promotion->promotion_name) ?></td>
            <td><?= $this->Number->format($promotion->duration) ?></td>
            <td><?= h($promotion->created) ?></td>
            <td><?= h($promotion->modified) ?></td>
            <td class="actions">
                <?= $this->Html->link(__('View'), ['action' => 'view', $promotion->id]) ?>
                <?= $this->Html->link(__('Edit'), ['action' => 'edit', $promotion->id]) ?>
                <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $promotion->id], ['confirm' => __('Are you sure you want to delete # {0}?', $promotion->id)]) ?>
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
