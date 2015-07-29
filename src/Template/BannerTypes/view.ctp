<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Edit Banner Type'), ['action' => 'edit', $bannerType->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Banner Type'), ['action' => 'delete', $bannerType->id], ['confirm' => __('Are you sure you want to delete # {0}?', $bannerType->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Banner Types'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Banner Type'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Banners'), ['controller' => 'Banners', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Banner'), ['controller' => 'Banners', 'action' => 'add']) ?> </li>
    </ul>
</div>
<div class="bannerTypes view large-10 medium-9 columns">
    <h2><?= h($bannerType->id) ?></h2>
    <div class="row">
        <div class="large-5 columns strings">
            <h6 class="subheader"><?= __('Type Name') ?></h6>
            <p><?= h($bannerType->type_name) ?></p>
        </div>
        <div class="large-2 columns numbers end">
            <h6 class="subheader"><?= __('Id') ?></h6>
            <p><?= $this->Number->format($bannerType->id) ?></p>
        </div>
        <div class="large-2 columns dates end">
            <h6 class="subheader"><?= __('Created') ?></h6>
            <p><?= h($bannerType->created) ?></p>
            <h6 class="subheader"><?= __('Modified') ?></h6>
            <p><?= h($bannerType->modified) ?></p>
        </div>
    </div>
</div>
<div class="related row">
    <div class="column large-12">
    <h4 class="subheader"><?= __('Related Banners') ?></h4>
    <?php if (!empty($bannerType->banners)): ?>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <th><?= __('Id') ?></th>
            <th><?= __('Banner Type Id') ?></th>
            <th><?= __('User Id') ?></th>
            <th><?= __('Banner Description') ?></th>
            <th><?= __('Path Banner') ?></th>
            <th><?= __('Url Redirect') ?></th>
            <th><?= __('Created') ?></th>
            <th><?= __('Modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
        <?php foreach ($bannerType->banners as $banners): ?>
        <tr>
            <td><?= h($banners->id) ?></td>
            <td><?= h($banners->banner_type_id) ?></td>
            <td><?= h($banners->user_id) ?></td>
            <td><?= h($banners->banner_description) ?></td>
            <td><?= h($banners->path_banner) ?></td>
            <td><?= h($banners->url_redirect) ?></td>
            <td><?= h($banners->created) ?></td>
            <td><?= h($banners->modified) ?></td>

            <td class="actions">
                <?= $this->Html->link(__('View'), ['controller' => 'Banners', 'action' => 'view', $banners->id]) ?>

                <?= $this->Html->link(__('Edit'), ['controller' => 'Banners', 'action' => 'edit', $banners->id]) ?>

                <?= $this->Form->postLink(__('Delete'), ['controller' => 'Banners', 'action' => 'delete', $banners->id], ['confirm' => __('Are you sure you want to delete # {0}?', $banners->id)]) ?>

            </td>
        </tr>

        <?php endforeach; ?>
    </table>
    <?php endif; ?>
    </div>
</div>
