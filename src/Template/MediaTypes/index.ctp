<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('New Media Type'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Medias'), ['controller' => 'Medias', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Media'), ['controller' => 'Medias', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="mediaTypes index large-10 medium-9 columns">
    <table cellpadding="0" cellspacing="0">
    <thead>
        <tr>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('name_media_type') ?></th>
            <th><?= $this->Paginator->sort('created') ?></th>
            <th><?= $this->Paginator->sort('modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($mediaTypes as $mediaType): ?>
        <tr>
            <td><?= $this->Number->format($mediaType->id) ?></td>
            <td><?= h($mediaType->name_media_type) ?></td>
            <td><?= h($mediaType->created) ?></td>
            <td><?= h($mediaType->modified) ?></td>
            <td class="actions">
                <?= $this->Html->link(__('View'), ['action' => 'view', $mediaType->id]) ?>
                <?= $this->Html->link(__('Edit'), ['action' => 'edit', $mediaType->id]) ?>
                <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $mediaType->id], ['confirm' => __('Are you sure you want to delete # {0}?', $mediaType->id)]) ?>
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
