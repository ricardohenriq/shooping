<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Edit Product Feature'), ['action' => 'edit', $productFeature->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Product Feature'), ['action' => 'delete', $productFeature->id], ['confirm' => __('Are you sure you want to delete # {0}?', $productFeature->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Product Features'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Product Feature'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Features'), ['controller' => 'Features', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Feature'), ['controller' => 'Features', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Products'), ['controller' => 'Products', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Product'), ['controller' => 'Products', 'action' => 'add']) ?> </li>
    </ul>
</div>
<div class="productFeatures view large-10 medium-9 columns">
    <h2><?= h($productFeature->id) ?></h2>
    <div class="row">
        <div class="large-5 columns strings">
            <h6 class="subheader"><?= __('Feature Value') ?></h6>
            <p><?= h($productFeature->feature_value) ?></p>
            <h6 class="subheader"><?= __('Feature') ?></h6>
            <p><?= $productFeature->has('feature') ? $this->Html->link($productFeature->feature->id, ['controller' => 'Features', 'action' => 'view', $productFeature->feature->id]) : '' ?></p>
            <h6 class="subheader"><?= __('Product') ?></h6>
            <p><?= $productFeature->has('product') ? $this->Html->link($productFeature->product->id, ['controller' => 'Products', 'action' => 'view', $productFeature->product->id]) : '' ?></p>
        </div>
        <div class="large-2 columns numbers end">
            <h6 class="subheader"><?= __('Id') ?></h6>
            <p><?= $this->Number->format($productFeature->id) ?></p>
        </div>
        <div class="large-2 columns dates end">
            <h6 class="subheader"><?= __('Created') ?></h6>
            <p><?= h($productFeature->created) ?></p>
            <h6 class="subheader"><?= __('Modified') ?></h6>
            <p><?= h($productFeature->modified) ?></p>
        </div>
    </div>
</div>
