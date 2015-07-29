<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $bannerType->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $bannerType->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Banner Types'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Banners'), ['controller' => 'Banners', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Banner'), ['controller' => 'Banners', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="bannerTypes form large-10 medium-9 columns">
    <?= $this->Form->create($bannerType) ?>
    <fieldset>
        <legend><?= __('Edit Banner Type') ?></legend>
        <?php
            echo $this->Form->input('type_name');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
