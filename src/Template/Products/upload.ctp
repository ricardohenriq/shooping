<?php
    $this->layout = false;
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title></title>
		<meta name="description" content="">
		<meta name="keywords" content="">
		<meta name="robots" content="index, follow">
		<meta name="author" content="">
		<meta name="reply-to" content="">
		<link rel="icon" href="" sizes="32x32">
		<meta name="twitter:card" content="summary">
		<meta name="twitter:site" content="@">
		<meta name="twitter:creator" content="@">
		<meta property="og:title" content="">
		<meta property="og:description" content="">
		<meta property="og:url" content="">
		<meta property="og:image" content="">
		<meta property="og:type" content="website">
		<meta property="og:site_name" content="">
		<link rel="stylesheet" href="/css/library/Bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="/css/library/dropzone/dropzone.css">
		<link rel="stylesheet" href="/css/styles/upload-products.css">
		<script defer src="/js/library/jquery-1.11.1/jquery-1.11.1.min.js"></script>
		<script defer src="/js/library/Bootstrap/js/bootstrap.min.js"></script>
		<script defer src="/js/library/dropzone/dropzone.js"></script>
		<script defer src="/js/actions/upload-products.js"></script>
	</head>
	<body>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">Test Front-End
					</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.html">Index<span class="sr-only">(current)</span></a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" data-toggle="modal" data-target="#add-product-modal" id="add-product-button">Modal</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Others <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Effect 1</a></li>
								<li><a href="#">Effect 2</a></li>
								<li><a href="#">Effect 3</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="wrapper">
			<div class="container">
				<div class="row">
					
				</div>
			</div>
		</div>
		<div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title span7 text-center" id="myModalLabel">Cadastrar Produtos</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal dropzone" id="myDropzone" action="#" method="post">
							<div class="dropzone-previews"></div> <!-- this is were the previews should be shown. -->
							<div class="fallback">
								<!-- this is the fallback if JS isn't working -->
								<input name="file" type="file" multiple>
							</div>
							<div class="dz-message" data-dz-message><span>Arraste as fotos do Produto</span></div>
						</form>
						<div id="add-products-complement">
							<hr>
							<div id="features-insert-container">
								<label for="feature-insert" class="control-label">Select list:</label>
								<select class="form-control" id="feature-insert">
								</select>
								<button id="insert-feature-button" name="insert-feature-button" class="btn btn-success" style="display:inline">Inserir caracteristica</button>
							</div>
							<hr>
							<div id="features-container">
							
							</div>
						</div>
						<div>
							<button id="reset-all" name="reset-all" class="btn btn-danger">Reset</button>
							<button id="submit-all" name="submit-all" class="btn btn-info">Cadastrar</button>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
