<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('List Subscribers'), ['action' => 'index']) ?></li>
    </ul>
</div>
<div class="subscribers form large-10 medium-9 columns">
    <?= $this->Form->create($subscriber) ?>
    <fieldset>
        <legend><?= __('Add Subscriber') ?></legend>
        <?php
            echo $this->Form->input('email');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
