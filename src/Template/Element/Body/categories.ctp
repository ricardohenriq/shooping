<div id="left-sidebar" class="col-md-2">
    <ul class="nav nav-pills nav-stacked">
    <?php foreach($categories as $category): ?>
        <li role="presentation">
            <a href="#"><?=$category['category_name'] ?>
            <i class="glyphicon glyphicon-chevron-right"></i></a>
        </li>
    <?php endforeach; ?>
    </ul>
</div>