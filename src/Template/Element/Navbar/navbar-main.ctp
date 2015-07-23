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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">MORE<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href=""></a></li>
                        <li class="divider"></li>
                        <li><a href=""></a></li>
                        <li><a href=""></a></li>
                        <li class="divider"></li>
                        <li><a href=""></a></li>
                        <li><a href=""></a></li>
                    </ul>
                </li>
                <li><button type="button" class="btn btn-info navbar-btn" data-toggle="modal" data-target="#login_modal">Login</button></li>
                <li><button type="button" class="btn btn-info navbar-btn" data-toggle="modal" data-target="#create_account_modal">Create Account</button></li>
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
                                <button type="button" class="btn btn-info">
                                    <i class="fa fa-youtube-play"></i>
                                </button>
                            </li>
                            <li class="social">
                                <button type="button" class="btn btn-info">
                                    <i class="fa fa-facebook"></i>
                                </button>
                            </li>
                            <li class="social">
                                <button type="button" class="btn btn-info">
                                    <i class="fa fa-tumblr"></i>
                                </button>
                            </li>
                            <li class="social">
                                <button type="button" class="btn btn-info">
                                    <i class="fa fa-twitter"></i>
                                </button>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <form class="navbar-form span7 text-center" role="search" action="">
                <button class="btn btn-info" title="Favoritos">
                    <span class="glyphicon glyphicon-star"></span>
                </button>
                <input type="text" class="form-control" placeholder="Search">
                <button class="btn btn-default" type="submit" name="search_form" value="Search">Search
                    <span class="glyphicon glyphicon-search"></span>
                </button>
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#advanced_search_modal">Advanced Search</button>
            </form>
        </div>
    </div>
</nav>