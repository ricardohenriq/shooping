<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Edit Media'), ['action' => 'edit', $media->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Media'), ['action' => 'delete', $media->id], ['confirm' => __('Are you sure you want to delete # {0}?', $media->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Medias'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Media'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Media Types'), ['controller' => 'MediaTypes', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Media Type'), ['controller' => 'MediaTypes', 'action' => 'add']) ?> </li>
    </ul>
</div>
<div class="medias view large-10 medium-9 columns">
    <h2><?= h($media->id) ?></h2>
    <div class="row">
        <div class="large-5 columns strings">
            <h6 class="subheader"><?= __('Media Type') ?></h6>
            <p><?= $media->has('media_type') ? $this->Html->link($media->media_type->id, ['controller' => 'MediaTypes', 'action' => 'view', $media->media_type->id]) : '' ?></p>
            <h6 class="subheader"><?= __('Path') ?></h6>
            <p><?= h($media->path) ?></p>
        </div>
        <div class="large-2 columns numbers end">
            <h6 class="subheader"><?= __('Id') ?></h6>
            <p><?= $this->Number->format($media->id) ?></p>
        </div>
        <div class="large-2 columns dates end">
            <h6 class="subheader"><?= __('Created') ?></h6>
            <p><?= h($media->created) ?></p>
            <h6 class="subheader"><?= __('Modified') ?></h6>
            <p><?= h($media->modified) ?></p>
        </div>
    </div>
</div>
