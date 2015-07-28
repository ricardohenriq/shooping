<div id="left-sidebar" class="col-md-2">
    <ul class="nav nav-pills nav-stacked">
    <?php foreach($categories as $category): ?>
        <li role="presentation">
            <a href="#"> <?= $category ?>
            <i class="glyphicon glyphicon-chevron-right"></i></a>
            <ul>
                <?php foreach($subCategories as $subCategory): ?>
                    <?php if($subCategory['category']['category_name'] == $category): ?>
                        <li role="presentation">
                            <a href="#"> <?= $subCategory['sub_category_name'] ?></a>
                        </li>
                    <?php endif; ?>
                <?php endforeach; ?>
            </ul>
        </li>
    <?php endforeach; ?>
    </ul>
</div>