<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Edit Subscriber'), ['action' => 'edit', $subscriber->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Subscriber'), ['action' => 'delete', $subscriber->id], ['confirm' => __('Are you sure you want to delete # {0}?', $subscriber->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Subscribers'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Subscriber'), ['action' => 'add']) ?> </li>
    </ul>
</div>
<div class="subscribers view large-10 medium-9 columns">
    <h2><?= h($subscriber->id) ?></h2>
    <div class="row">
        <div class="large-5 columns strings">
            <h6 class="subheader"><?= __('Email') ?></h6>
            <p><?= h($subscriber->email) ?></p>
        </div>
        <div class="large-2 columns numbers end">
            <h6 class="subheader"><?= __('Id') ?></h6>
            <p><?= $this->Number->format($subscriber->id) ?></p>
        </div>
        <div class="large-2 columns dates end">
            <h6 class="subheader"><?= __('Created') ?></h6>
            <p><?= h($subscriber->created) ?></p>
            <h6 class="subheader"><?= __('Modified') ?></h6>
            <p><?= h($subscriber->modified) ?></p>
        </div>
    </div>
</div>
