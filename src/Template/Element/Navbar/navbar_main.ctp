<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Meu Site</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">MAIS<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><?= $this->Html->link('Mini Mapa', ['controller' => 'Stores', 'action' => 'miniMap']) ?></li>
                        <li class="divider"></li>
                        <li><a href="">Lojistas</a></li>
                        <li><a href=""></a></li>
                        <li class="divider"></li>
                        <li><a href=""></a></li>
                        <li><a href=""></a></li>
                    </ul>
                </li>
                <?php if ($logged == false): ?>
                    <li><button type="button" class="btn btn-info navbar-btn" data-toggle="modal" data-target="#login_modal">Login</button></li>
                    <li><button type="button" class="btn btn-info navbar-btn" data-toggle="modal" data-target="#create_account_modal">Create Account</button></li>
                <?php elseif($logged == true): ?>
                    <li>
                        <div class="btn-group navbar-btn">
                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <?= $username ?>&nbsp;<span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><?= $this->Html->link('Meu Perfil', ['controller' => 'Users', 'action' => 'view', $userId]) ?></li>
                                <li><a href="#">My Favorites</a></li>
                                <li><a href="#">My History</a></li>
                                <li><a href="#">My Advertises</a></li>
                                <li class="divider"></li>
                                <li><a href="#" data-toggle="modal" data-target="#logout_modal">Logout</a></li>
                            </ul>
                        </div>
                    </li>
                <?php endif; ?>
                <li>
                    <div class="btn-group navbar-btn">
                        <button type="button" class="btn btn-info">
                            <span class="glyphicon glyphicon-star"></span></i>
                        </button>
                        <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <span class="caret"></span>
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <ul class="dropdown-menu social-container" role="menu">
                            <li class="social">
                                <button type="button" class="btn red">
                                    <i class="fa fa-youtube-play"></i>
                                </button>
                            </li>
                            <li class="social">
                                <button type="button" class="btn blue">
                                    <i class="fa fa-facebook"></i>
                                </button>
                            </li>
                            <li class="social">
                                <button type="button" class="btn blue-dark">
                                    <i class="fa fa-tumblr"></i>
                                </button>
                            </li>
                            <li class="social">
                                <button type="button" class="btn blue-light">
                                    <i class="fa fa-twitter"></i>
                                </button>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <?= $this->Form->create(null, ['url' => ['controller' => 'Products', 'action' => 'search'], 'type' => 'get', 'id' => 'search-form', 'class' => 'navbar-form span7 text-center']) ?>
                <button class="btn btn-info" title="Favorite o Site">
                    <span class="glyphicon glyphicon-star"></span>
                </button>
                <?= $this->Form->text('search', ['class' => 'form-control', 'placeholder' => 'Search', 'id' => 'search']) ?>
                <?= $this->Form->button('Buscar <span class="glyphicon glyphicon-search"></span>', ['type' => 'submit', 'class' => 'btn btn-default']) ?>
            <?= $this->Form->end() ?>
        </div>
    </div>
</nav>