<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Edit Offer Banner'), ['action' => 'edit', $offerBanner->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Offer Banner'), ['action' => 'delete', $offerBanner->id], ['confirm' => __('Are you sure you want to delete # {0}?', $offerBanner->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Offer Banners'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Offer Banner'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Offers'), ['controller' => 'Offers', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Offer'), ['controller' => 'Offers', 'action' => 'add']) ?> </li>
    </ul>
</div>
<div class="offerBanners view large-10 medium-9 columns">
    <h2><?= h($offerBanner->id) ?></h2>
    <div class="row">
        <div class="large-5 columns strings">
            <h6 class="subheader"><?= __('Path') ?></h6>
            <p><?= h($offerBanner->path) ?></p>
            <h6 class="subheader"><?= __('Offer') ?></h6>
            <p><?= $offerBanner->has('offer') ? $this->Html->link($offerBanner->offer->id, ['controller' => 'Offers', 'action' => 'view', $offerBanner->offer->id]) : '' ?></p>
        </div>
        <div class="large-2 columns numbers end">
            <h6 class="subheader"><?= __('Id') ?></h6>
            <p><?= $this->Number->format($offerBanner->id) ?></p>
        </div>
        <div class="large-2 columns dates end">
            <h6 class="subheader"><?= __('Created') ?></h6>
            <p><?= h($offerBanner->created) ?></p>
            <h6 class="subheader"><?= __('Modified') ?></h6>
            <p><?= h($offerBanner->modified) ?></p>
        </div>
    </div>
</div>
