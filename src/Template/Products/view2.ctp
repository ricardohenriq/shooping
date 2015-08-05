<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Edit Product'), ['action' => 'edit', $product->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Product'), ['action' => 'delete', $product->id], ['confirm' => __('Are you sure you want to delete # {0}?', $product->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Products'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Product'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Stores'), ['controller' => 'Stores', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Store'), ['controller' => 'Stores', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Bookings'), ['controller' => 'Bookings', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Booking'), ['controller' => 'Bookings', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Product Features'), ['controller' => 'ProductFeatures', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Product Feature'), ['controller' => 'ProductFeatures', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Product Medias'), ['controller' => 'ProductMedias', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Product Media'), ['controller' => 'ProductMedias', 'action' => 'add']) ?> </li>
    </ul>
</div>
<div class="products view large-10 medium-9 columns">
    <h2><?= h($product->id) ?></h2>
    <div class="row">
        <div class="large-5 columns strings">
            <h6 class="subheader"><?= __('Product Name') ?></h6>
            <p><?= h($product->product_name) ?></p>
            <h6 class="subheader"><?= __('Store') ?></h6>
            <p><?= $product->has('store') ? $this->Html->link($product->store->id, ['controller' => 'Stores', 'action' => 'view', $product->store->id]) : '' ?></p>
            <h6 class="subheader"><?= __('Description') ?></h6>
            <p><?= h($product->description) ?></p>
        </div>
        <div class="large-2 columns numbers end">
            <h6 class="subheader"><?= __('Id') ?></h6>
            <p><?= $this->Number->format($product->id) ?></p>
            <h6 class="subheader"><?= __('Quantity') ?></h6>
            <p><?= $this->Number->format($product->quantity) ?></p>
            <h6 class="subheader"><?= __('Price') ?></h6>
            <p><?= $this->Number->format($product->price) ?></p>
            <h6 class="subheader"><?= __('Status') ?></h6>
            <p><?= $this->Number->format($product->status) ?></p>
        </div>
        <div class="large-2 columns dates end">
            <h6 class="subheader"><?= __('Created') ?></h6>
            <p><?= h($product->created) ?></p>
            <h6 class="subheader"><?= __('Modified') ?></h6>
            <p><?= h($product->modified) ?></p>
        </div>
    </div>
</div>
<div class="related row">
    <div class="column large-12">
    <h4 class="subheader"><?= __('Related Bookings') ?></h4>
    <?php if (!empty($product->bookings)): ?>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <th><?= __('Id') ?></th>
            <th><?= __('Product Id') ?></th>
            <th><?= __('Quantity') ?></th>
            <th><?= __('User Id') ?></th>
            <th><?= __('Created') ?></th>
            <th><?= __('Modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
        <?php foreach ($product->bookings as $bookings): ?>
        <tr>
            <td><?= h($bookings->id) ?></td>
            <td><?= h($bookings->product_id) ?></td>
            <td><?= h($bookings->quantity) ?></td>
            <td><?= h($bookings->user_id) ?></td>
            <td><?= h($bookings->created) ?></td>
            <td><?= h($bookings->modified) ?></td>

            <td class="actions">
                <?= $this->Html->link(__('View'), ['controller' => 'Bookings', 'action' => 'view', $bookings->id]) ?>

                <?= $this->Html->link(__('Edit'), ['controller' => 'Bookings', 'action' => 'edit', $bookings->id]) ?>

                <?= $this->Form->postLink(__('Delete'), ['controller' => 'Bookings', 'action' => 'delete', $bookings->id], ['confirm' => __('Are you sure you want to delete # {0}?', $bookings->id)]) ?>

            </td>
        </tr>

        <?php endforeach; ?>
    </table>
    <?php endif; ?>
    </div>
</div>
<div class="related row">
    <div class="column large-12">
    <h4 class="subheader"><?= __('Related Product Features') ?></h4>
    <?php if (!empty($product->product_features)): ?>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <th><?= __('Id') ?></th>
            <th><?= __('Feature Value') ?></th>
            <th><?= __('Feature Id') ?></th>
            <th><?= __('Product Id') ?></th>
            <th><?= __('Created') ?></th>
            <th><?= __('Modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
        <?php foreach ($product->product_features as $productFeatures): ?>
        <tr>
            <td><?= h($productFeatures->id) ?></td>
            <td><?= h($productFeatures->feature_value) ?></td>
            <td><?= h($productFeatures->feature_id) ?></td>
            <td><?= h($productFeatures->product_id) ?></td>
            <td><?= h($productFeatures->created) ?></td>
            <td><?= h($productFeatures->modified) ?></td>

            <td class="actions">
                <?= $this->Html->link(__('View'), ['controller' => 'ProductFeatures', 'action' => 'view', $productFeatures->id]) ?>

                <?= $this->Html->link(__('Edit'), ['controller' => 'ProductFeatures', 'action' => 'edit', $productFeatures->id]) ?>

                <?= $this->Form->postLink(__('Delete'), ['controller' => 'ProductFeatures', 'action' => 'delete', $productFeatures->id], ['confirm' => __('Are you sure you want to delete # {0}?', $productFeatures->id)]) ?>

            </td>
        </tr>

        <?php endforeach; ?>
    </table>
    <?php endif; ?>
    </div>
</div>
<div class="related row">
    <div class="column large-12">
    <h4 class="subheader"><?= __('Related Product Medias') ?></h4>
    <?php if (!empty($product->product_medias)): ?>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <th><?= __('Id') ?></th>
            <th><?= __('Product Id') ?></th>
            <th><?= __('Media Id') ?></th>
            <th><?= __('Created') ?></th>
            <th><?= __('Modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
        <?php foreach ($product->product_medias as $productMedias): ?>
        <tr>
            <td><?= h($productMedias->id) ?></td>
            <td><?= h($productMedias->product_id) ?></td>
            <td><?= h($productMedias->media_id) ?></td>
            <td><?= h($productMedias->created) ?></td>
            <td><?= h($productMedias->modified) ?></td>

            <td class="actions">
                <?= $this->Html->link(__('View'), ['controller' => 'ProductMedias', 'action' => 'view', $productMedias->id]) ?>

                <?= $this->Html->link(__('Edit'), ['controller' => 'ProductMedias', 'action' => 'edit', $productMedias->id]) ?>

                <?= $this->Form->postLink(__('Delete'), ['controller' => 'ProductMedias', 'action' => 'delete', $productMedias->id], ['confirm' => __('Are you sure you want to delete # {0}?', $productMedias->id)]) ?>

            </td>
        </tr>

        <?php endforeach; ?>
    </table>
    <?php endif; ?>
    </div>
</div>
