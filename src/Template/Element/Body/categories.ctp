<div id="left-sidebar" class="col-md-3">
    <div class="nav-side-menu">
        <div class="brand">Menu</div>
        <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
        <div class="menu-list">
            <ul id="menu-content" class="menu-content collapse-menu out">
                <?php foreach($categories as $category): ?>
                    <li  data-toggle="collapse" data-target="#<?= $category['category_name'] ?>" class="collapsed">
                        <a href=""><?= $category['category_name'] ?><span class="arrow"></span></a>
                    </li>
                    <?php $isFirst = true ?>
                    <?php foreach($subCategories as $subCategory): ?>
                        <?php if(($subCategory['category_id'] == $category['id']) && ($isFirst == true)): ?>
                            <ul class="sub-menu collapse" id="<?= $category['category_name'] ?>">
                            <?php $isFirst = false ?>
                        <?php endif; ?>
                        <?php if($subCategory['category_id'] == $category['id']): ?>
                            <li><a href="#"><?= $subCategory['sub_category_name'] ?></a></li>
                        <?php endif; ?>
                    <?php endforeach; ?>
                    <?php if($isFirst == false): ?>
                        </ul>
                    <?php endif; ?>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
</div>