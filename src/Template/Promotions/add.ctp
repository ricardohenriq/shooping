<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('List Promotions'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Promotion Products'), ['controller' => 'PromotionProducts', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Promotion Product'), ['controller' => 'PromotionProducts', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="promotions form large-10 medium-9 columns">
    <?= $this->Form->create($promotion) ?>
    <fieldset>
        <legend><?= __('Add Promotion') ?></legend>
        <?php
            echo $this->Form->input('promotion_name');
            echo $this->Form->input('duration');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
