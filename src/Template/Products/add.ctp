<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('List Products'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Stores'), ['controller' => 'Stores', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Store'), ['controller' => 'Stores', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Bookings'), ['controller' => 'Bookings', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Booking'), ['controller' => 'Bookings', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Product Features'), ['controller' => 'ProductFeatures', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Product Feature'), ['controller' => 'ProductFeatures', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Product Medias'), ['controller' => 'ProductMedias', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Product Media'), ['controller' => 'ProductMedias', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="products form large-10 medium-9 columns">
    <?= $this->Form->create($product) ?>
    <fieldset>
        <legend><?= __('Add Product') ?></legend>
        <?php
            echo $this->Form->input('product_name');
            echo $this->Form->input('store_id', ['options' => $stores]);
            echo $this->Form->input('quantity');
            echo $this->Form->input('description');
            echo $this->Form->input('price');
            echo $this->Form->input('status');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
