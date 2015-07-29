<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Edit Banner'), ['action' => 'edit', $banner->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Banner'), ['action' => 'delete', $banner->id], ['confirm' => __('Are you sure you want to delete # {0}?', $banner->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Banners'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Banner'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Banner Types'), ['controller' => 'BannerTypes', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Banner Type'), ['controller' => 'BannerTypes', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?> </li>
    </ul>
</div>
<div class="banners view large-10 medium-9 columns">
    <h2><?= h($banner->id) ?></h2>
    <div class="row">
        <div class="large-5 columns strings">
            <h6 class="subheader"><?= __('Banner Type') ?></h6>
            <p><?= $banner->has('banner_type') ? $this->Html->link($banner->banner_type->id, ['controller' => 'BannerTypes', 'action' => 'view', $banner->banner_type->id]) : '' ?></p>
            <h6 class="subheader"><?= __('User') ?></h6>
            <p><?= $banner->has('user') ? $this->Html->link($banner->user->id, ['controller' => 'Users', 'action' => 'view', $banner->user->id]) : '' ?></p>
            <h6 class="subheader"><?= __('Banner Description') ?></h6>
            <p><?= h($banner->banner_description) ?></p>
            <h6 class="subheader"><?= __('Path Banner') ?></h6>
            <p><?= h($banner->path_banner) ?></p>
            <h6 class="subheader"><?= __('Url Redirect') ?></h6>
            <p><?= h($banner->url_redirect) ?></p>
        </div>
        <div class="large-2 columns numbers end">
            <h6 class="subheader"><?= __('Id') ?></h6>
            <p><?= $this->Number->format($banner->id) ?></p>
        </div>
        <div class="large-2 columns dates end">
            <h6 class="subheader"><?= __('Created') ?></h6>
            <p><?= h($banner->created) ?></p>
            <h6 class="subheader"><?= __('Modified') ?></h6>
            <p><?= h($banner->modified) ?></p>
        </div>
    </div>
</div>
