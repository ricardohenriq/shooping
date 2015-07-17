<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Edit Promotion Product'), ['action' => 'edit', $promotionProduct->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Promotion Product'), ['action' => 'delete', $promotionProduct->id], ['confirm' => __('Are you sure you want to delete # {0}?', $promotionProduct->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Promotion Products'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Promotion Product'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Products'), ['controller' => 'Products', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Product'), ['controller' => 'Products', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Promotions'), ['controller' => 'Promotions', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Promotion'), ['controller' => 'Promotions', 'action' => 'add']) ?> </li>
    </ul>
</div>
<div class="promotionProducts view large-10 medium-9 columns">
    <h2><?= h($promotionProduct->id) ?></h2>
    <div class="row">
        <div class="large-5 columns strings">
            <h6 class="subheader"><?= __('Product') ?></h6>
            <p><?= $promotionProduct->has('product') ? $this->Html->link($promotionProduct->product->id, ['controller' => 'Products', 'action' => 'view', $promotionProduct->product->id]) : '' ?></p>
            <h6 class="subheader"><?= __('Promotion') ?></h6>
            <p><?= $promotionProduct->has('promotion') ? $this->Html->link($promotionProduct->promotion->id, ['controller' => 'Promotions', 'action' => 'view', $promotionProduct->promotion->id]) : '' ?></p>
        </div>
        <div class="large-2 columns numbers end">
            <h6 class="subheader"><?= __('Id') ?></h6>
            <p><?= $this->Number->format($promotionProduct->id) ?></p>
            <h6 class="subheader"><?= __('Promotion Price') ?></h6>
            <p><?= $this->Number->format($promotionProduct->promotion_price) ?></p>
            <h6 class="subheader"><?= __('Promotion Quantity') ?></h6>
            <p><?= $this->Number->format($promotionProduct->promotion_quantity) ?></p>
        </div>
        <div class="large-2 columns dates end">
            <h6 class="subheader"><?= __('Created') ?></h6>
            <p><?= h($promotionProduct->created) ?></p>
            <h6 class="subheader"><?= __('Modified') ?></h6>
            <p><?= h($promotionProduct->modified) ?></p>
        </div>
    </div>
</div>
