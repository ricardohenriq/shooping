<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('New Subscriber'), ['action' => 'add']) ?></li>
    </ul>
</div>
<div class="subscribers index large-10 medium-9 columns">
    <table cellpadding="0" cellspacing="0">
    <thead>
        <tr>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('email') ?></th>
            <th><?= $this->Paginator->sort('created') ?></th>
            <th><?= $this->Paginator->sort('modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($subscribers as $subscriber): ?>
        <tr>
            <td><?= $this->Number->format($subscriber->id) ?></td>
            <td><?= h($subscriber->email) ?></td>
            <td><?= h($subscriber->created) ?></td>
            <td><?= h($subscriber->modified) ?></td>
            <td class="actions">
                <?= $this->Html->link(__('View'), ['action' => 'view', $subscriber->id]) ?>
                <?= $this->Html->link(__('Edit'), ['action' => 'edit', $subscriber->id]) ?>
                <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $subscriber->id], ['confirm' => __('Are you sure you want to delete # {0}?', $subscriber->id)]) ?>
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
