<div id="news" class="col-md-12">
    <ul id="news-slide">
        <?php foreach($news as $new): ?>
            <li>
                <?= $this->Html->link($new['name'],['controller' => 'Stores', 'action' => 'view', $new['store_id']]) ?>
            </li>
        <?php endforeach; ?>
    </ul>
</div>