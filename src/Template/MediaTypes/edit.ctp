<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $mediaType->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $mediaType->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Media Types'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Medias'), ['controller' => 'Medias', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Media'), ['controller' => 'Medias', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="mediaTypes form large-10 medium-9 columns">
    <?= $this->Form->create($mediaType) ?>
    <fieldset>
        <legend><?= __('Edit Media Type') ?></legend>
        <?php
            echo $this->Form->input('name_media_type');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
