<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $answer->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $answer->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Answers'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Comments'), ['controller' => 'Comments', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Comment'), ['controller' => 'Comments', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="answers form large-10 medium-9 columns">
    <?= $this->Form->create($answer) ?>
    <fieldset>
        <legend><?= __('Edit Answer') ?></legend>
        <?php
            echo $this->Form->input('answer_text');
            echo $this->Form->input('comment_id', ['options' => $comments]);
            echo $this->Form->input('user_id', ['options' => $users]);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
