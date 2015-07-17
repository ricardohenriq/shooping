<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Edit Promotion'), ['action' => 'edit', $promotion->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Promotion'), ['action' => 'delete', $promotion->id], ['confirm' => __('Are you sure you want to delete # {0}?', $promotion->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Promotions'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Promotion'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Promotion Products'), ['controller' => 'PromotionProducts', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Promotion Product'), ['controller' => 'PromotionProducts', 'action' => 'add']) ?> </li>
    </ul>
</div>
<div class="promotions view large-10 medium-9 columns">
    <h2><?= h($promotion->id) ?></h2>
    <div class="row">
        <div class="large-5 columns strings">
            <h6 class="subheader"><?= __('Promotion Name') ?></h6>
            <p><?= h($promotion->promotion_name) ?></p>
        </div>
        <div class="large-2 columns numbers end">
            <h6 class="subheader"><?= __('Id') ?></h6>
            <p><?= $this->Number->format($promotion->id) ?></p>
            <h6 class="subheader"><?= __('Duration') ?></h6>
            <p><?= $this->Number->format($promotion->duration) ?></p>
        </div>
        <div class="large-2 columns dates end">
            <h6 class="subheader"><?= __('Created') ?></h6>
            <p><?= h($promotion->created) ?></p>
            <h6 class="subheader"><?= __('Modified') ?></h6>
            <p><?= h($promotion->modified) ?></p>
        </div>
    </div>
</div>
<div class="related row">
    <div class="column large-12">
    <h4 class="subheader"><?= __('Related Promotion Products') ?></h4>
    <?php if (!empty($promotion->promotion_products)): ?>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <th><?= __('Id') ?></th>
            <th><?= __('Product Id') ?></th>
            <th><?= __('Promotion Id') ?></th>
            <th><?= __('Promotion Price') ?></th>
            <th><?= __('Promotion Quantity') ?></th>
            <th><?= __('Created') ?></th>
            <th><?= __('Modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
        <?php foreach ($promotion->promotion_products as $promotionProducts): ?>
        <tr>
            <td><?= h($promotionProducts->id) ?></td>
            <td><?= h($promotionProducts->product_id) ?></td>
            <td><?= h($promotionProducts->promotion_id) ?></td>
            <td><?= h($promotionProducts->promotion_price) ?></td>
            <td><?= h($promotionProducts->promotion_quantity) ?></td>
            <td><?= h($promotionProducts->created) ?></td>
            <td><?= h($promotionProducts->modified) ?></td>

            <td class="actions">
                <?= $this->Html->link(__('View'), ['controller' => 'PromotionProducts', 'action' => 'view', $promotionProducts->id]) ?>

                <?= $this->Html->link(__('Edit'), ['controller' => 'PromotionProducts', 'action' => 'edit', $promotionProducts->id]) ?>

                <?= $this->Form->postLink(__('Delete'), ['controller' => 'PromotionProducts', 'action' => 'delete', $promotionProducts->id], ['confirm' => __('Are you sure you want to delete # {0}?', $promotionProducts->id)]) ?>

            </td>
        </tr>

        <?php endforeach; ?>
    </table>
    <?php endif; ?>
    </div>
</div>
