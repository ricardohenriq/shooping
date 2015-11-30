<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Edit Offer'), ['action' => 'edit', $offer->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Offer'), ['action' => 'delete', $offer->id], ['confirm' => __('Are you sure you want to delete # {0}?', $offer->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Offers'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Offer'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Products'), ['controller' => 'Products', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Product'), ['controller' => 'Products', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Offer Banners'), ['controller' => 'OfferBanners', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Offer Banner'), ['controller' => 'OfferBanners', 'action' => 'add']) ?> </li>
    </ul>
</div>
<div class="offers view large-10 medium-9 columns">
    <h2><?= h($offer->id) ?></h2>
    <div class="row">
        <div class="large-5 columns strings">
            <h6 class="subheader"><?= __('Product') ?></h6>
            <p><?= $offer->has('product') ? $this->Html->link($offer->product->id, ['controller' => 'Products', 'action' => 'view', $offer->product->id]) : '' ?></p>
            <h6 class="subheader"><?= __('Name') ?></h6>
            <p><?= h($offer->name) ?></p>
            <h6 class="subheader"><?= __('Description') ?></h6>
            <p><?= h($offer->description) ?></p>
        </div>
        <div class="large-2 columns numbers end">
            <h6 class="subheader"><?= __('Id') ?></h6>
            <p><?= $this->Number->format($offer->id) ?></p>
        </div>
        <div class="large-2 columns dates end">
            <h6 class="subheader"><?= __('Date Start') ?></h6>
            <p><?= h($offer->date_start) ?></p>
            <h6 class="subheader"><?= __('Date End') ?></h6>
            <p><?= h($offer->date_end) ?></p>
            <h6 class="subheader"><?= __('Created') ?></h6>
            <p><?= h($offer->created) ?></p>
            <h6 class="subheader"><?= __('Modified') ?></h6>
            <p><?= h($offer->modified) ?></p>
        </div>
    </div>
</div>
<div class="related row">
    <div class="column large-12">
    <h4 class="subheader"><?= __('Related Offer Banners') ?></h4>
    <?php if (!empty($offer->offer_banners)): ?>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <th><?= __('Id') ?></th>
            <th><?= __('Path') ?></th>
            <th><?= __('Offer Id') ?></th>
            <th><?= __('Created') ?></th>
            <th><?= __('Modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
        <?php foreach ($offer->offer_banners as $offerBanners): ?>
        <tr>
            <td><?= h($offerBanners->id) ?></td>
            <td><?= h($offerBanners->path) ?></td>
            <td><?= h($offerBanners->offer_id) ?></td>
            <td><?= h($offerBanners->created) ?></td>
            <td><?= h($offerBanners->modified) ?></td>

            <td class="actions">
                <?= $this->Html->link(__('View'), ['controller' => 'OfferBanners', 'action' => 'view', $offerBanners->id]) ?>

                <?= $this->Html->link(__('Edit'), ['controller' => 'OfferBanners', 'action' => 'edit', $offerBanners->id]) ?>

                <?= $this->Form->postLink(__('Delete'), ['controller' => 'OfferBanners', 'action' => 'delete', $offerBanners->id], ['confirm' => __('Are you sure you want to delete # {0}?', $offerBanners->id)]) ?>

            </td>
        </tr>

        <?php endforeach; ?>
    </table>
    <?php endif; ?>
    </div>
</div>
