<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $feature->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $feature->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Features'), ['action' => 'index']) ?></li>
    </ul>
</div>
<div class="features form large-10 medium-9 columns">
    <?= $this->Form->create($feature) ?>
    <fieldset>
        <legend><?= __('Edit Feature') ?></legend>
        <?php
            echo $this->Form->input('feature_name');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
