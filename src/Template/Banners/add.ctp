<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Html->link(__('List Banners'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Banner Types'), ['controller' => 'BannerTypes', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Banner Type'), ['controller' => 'BannerTypes', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="banners form large-10 medium-9 columns">
    <?= $this->Form->create($banner) ?>
    <fieldset>
        <legend><?= __('Add Banner') ?></legend>
        <?php
            echo $this->Form->input('banner_type_id', ['options' => $bannerTypes]);
            echo $this->Form->input('user_id', ['options' => $users]);
            echo $this->Form->input('banner_description');
            echo $this->Form->input('path_banner');
            echo $this->Form->input('url_redirect');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
