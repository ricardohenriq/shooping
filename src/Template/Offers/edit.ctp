<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $offer->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $offer->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Offers'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Products'), ['controller' => 'Products', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Product'), ['controller' => 'Products', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Offer Banners'), ['controller' => 'OfferBanners', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Offer Banner'), ['controller' => 'OfferBanners', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="offers form large-10 medium-9 columns">
    <?= $this->Form->create($offer) ?>
    <fieldset>
        <legend><?= __('Edit Offer') ?></legend>
        <?php
            echo $this->Form->input('product_id', ['options' => $products]);
            echo $this->Form->input('name');
            echo $this->Form->input('description');
            echo $this->Form->input('date_start');
            echo $this->Form->input('date_end');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
