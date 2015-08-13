<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('New Banner'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Banner Types'), ['controller' => 'BannerTypes', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Banner Type'), ['controller' => 'BannerTypes', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="banners index large-10 medium-9 columns">
    <table cellpadding="0" cellspacing="0">
    <thead>
        <tr>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('banner_type_id') ?></th>
            <th><?= $this->Paginator->sort('user_id') ?></th>
            <th><?= $this->Paginator->sort('banner_description') ?></th>
            <th><?= $this->Paginator->sort('path_banner') ?></th>
            <th><?= $this->Paginator->sort('url_redirect') ?></th>
            <th><?= $this->Paginator->sort('created') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($banners as $banner): ?>
        <tr>
            <td><?= $this->Number->format($banner->id) ?></td>
            <td>
                <?= $banner->has('banner_type') ? $this->Html->link($banner->banner_type->id, ['controller' => 'BannerTypes', 'action' => 'view', $banner->banner_type->id]) : '' ?>
            </td>
            <td>
                <?= $banner->has('user') ? $this->Html->link($banner->user->id, ['controller' => 'Users', 'action' => 'view', $banner->user->id]) : '' ?>
            </td>
            <td><?= h($banner->banner_description) ?></td>
            <td><?= h($banner->path_banner) ?></td>
            <td><?= h($banner->url_redirect) ?></td>
            <td><?= h($banner->created) ?></td>
            <td class="actions">
                <?= $this->Html->link(__('View'), ['action' => 'view', $banner->id]) ?>
                <?= $this->Html->link(__('Edit'), ['action' => 'edit', $banner->id]) ?>
                <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $banner->id], ['confirm' => __('Are you sure you want to delete # {0}?', $banner->id)]) ?>
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
