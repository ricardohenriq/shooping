<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $offerBanner->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $offerBanner->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Offer Banners'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Offers'), ['controller' => 'Offers', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Offer'), ['controller' => 'Offers', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="offerBanners form large-10 medium-9 columns">
    <?= $this->Form->create($offerBanner) ?>
    <fieldset>
        <legend><?= __('Edit Offer Banner') ?></legend>
        <?php
            echo $this->Form->input('path');
            echo $this->Form->input('offer_id', ['options' => $offers]);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
