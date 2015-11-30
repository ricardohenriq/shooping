<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('New Offer'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Products'), ['controller' => 'Products', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Product'), ['controller' => 'Products', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Offer Banners'), ['controller' => 'OfferBanners', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Offer Banner'), ['controller' => 'OfferBanners', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="offers index large-10 medium-9 columns">
    <table cellpadding="0" cellspacing="0">
    <thead>
        <tr>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('product_id') ?></th>
            <th><?= $this->Paginator->sort('name') ?></th>
            <th><?= $this->Paginator->sort('description') ?></th>
            <th><?= $this->Paginator->sort('date_start') ?></th>
            <th><?= $this->Paginator->sort('date_end') ?></th>
            <th><?= $this->Paginator->sort('created') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($offers as $offer): ?>
        <tr>
            <td><?= $this->Number->format($offer->id) ?></td>
            <td>
                <?= $offer->has('product') ? $this->Html->link($offer->product->id, ['controller' => 'Products', 'action' => 'view', $offer->product->id]) : '' ?>
            </td>
            <td><?= h($offer->name) ?></td>
            <td><?= h($offer->description) ?></td>
            <td><?= h($offer->date_start) ?></td>
            <td><?= h($offer->date_end) ?></td>
            <td><?= h($offer->created) ?></td>
            <td class="actions">
                <?= $this->Html->link(__('View'), ['action' => 'view', $offer->id]) ?>
                <?= $this->Html->link(__('Edit'), ['action' => 'edit', $offer->id]) ?>
                <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $offer->id], ['confirm' => __('Are you sure you want to delete # {0}?', $offer->id)]) ?>
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
