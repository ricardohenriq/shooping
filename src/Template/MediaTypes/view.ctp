<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Edit Media Type'), ['action' => 'edit', $mediaType->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Media Type'), ['action' => 'delete', $mediaType->id], ['confirm' => __('Are you sure you want to delete # {0}?', $mediaType->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Media Types'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Media Type'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Medias'), ['controller' => 'Medias', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Media'), ['controller' => 'Medias', 'action' => 'add']) ?> </li>
    </ul>
</div>
<div class="mediaTypes view large-10 medium-9 columns">
    <h2><?= h($mediaType->id) ?></h2>
    <div class="row">
        <div class="large-5 columns strings">
            <h6 class="subheader"><?= __('Name Media Type') ?></h6>
            <p><?= h($mediaType->name_media_type) ?></p>
        </div>
        <div class="large-2 columns numbers end">
            <h6 class="subheader"><?= __('Id') ?></h6>
            <p><?= $this->Number->format($mediaType->id) ?></p>
        </div>
        <div class="large-2 columns dates end">
            <h6 class="subheader"><?= __('Created') ?></h6>
            <p><?= h($mediaType->created) ?></p>
            <h6 class="subheader"><?= __('Modified') ?></h6>
            <p><?= h($mediaType->modified) ?></p>
        </div>
    </div>
</div>
<div class="related row">
    <div class="column large-12">
    <h4 class="subheader"><?= __('Related Medias') ?></h4>
    <?php if (!empty($mediaType->medias)): ?>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <th><?= __('Id') ?></th>
            <th><?= __('Media Type Id') ?></th>
            <th><?= __('Path') ?></th>
            <th><?= __('Created') ?></th>
            <th><?= __('Modified') ?></th>
            <th class="actions"><?= __('Actions') ?></th>
        </tr>
        <?php foreach ($mediaType->medias as $medias): ?>
        <tr>
            <td><?= h($medias->id) ?></td>
            <td><?= h($medias->media_type_id) ?></td>
            <td><?= h($medias->path) ?></td>
            <td><?= h($medias->created) ?></td>
            <td><?= h($medias->modified) ?></td>

            <td class="actions">
                <?= $this->Html->link(__('View'), ['controller' => 'Medias', 'action' => 'view', $medias->id]) ?>

                <?= $this->Html->link(__('Edit'), ['controller' => 'Medias', 'action' => 'edit', $medias->id]) ?>

                <?= $this->Form->postLink(__('Delete'), ['controller' => 'Medias', 'action' => 'delete', $medias->id], ['confirm' => __('Are you sure you want to delete # {0}?', $medias->id)]) ?>

            </td>
        </tr>

        <?php endforeach; ?>
    </table>
    <?php endif; ?>
    </div>
</div>
