<?php
    $this->start('meta');
		echo $this->Html->meta('viewport','width=device-width, initial-scale=1.0');
        echo $this->Html->meta('title','Fomulário de Email');
        echo $this->Html->meta('favicon.ico','/cart.png', ['type' => 'icon']);
        echo $this->Html->meta('keywords','');
        echo $this->Html->meta('description','');
        echo $this->Html->meta('robots','index,follow');
        echo $this->Html->meta('author','Ricardo Henrique');
        echo $this->Html->meta('reply-to','ricardohenrique996@gmail.com');
        echo $this->Html->meta('og:title','');
        echo $this->Html->meta('og:description','');
        echo $this->Html->meta('og:url','');
        echo $this->Html->meta('og:image','');
        echo $this->Html->meta('og:type','');
        echo $this->Html->meta('og:site_name','');
	$this->end();
	
	$this->start('css');
		echo $this->Html->css('library/jquery-ui-1.11.2.custom/jquery-ui.css');
        echo $this->Html->css('library/Bootstrap/css/bootstrap.min.css');
        echo $this->Html->css('library/font-awesome-4.4.0/css/font-awesome.min.css');
        echo $this->Html->css('library/datepicker/css/datepicker.css');
        echo $this->Html->css('styles/style.css');
	$this->end();
	
	$this->start('script');
		echo $this->Html->script('library/jquery-1.11.1/jquery-1.11.1.min.js',['defer' => true]);
        echo $this->Html->script('library/jquery-ui-1.11.2.custom/jquery-ui.min.js',['defer' => true]);
        echo $this->Html->script('library/Bootstrap/js/bootstrap.min.js',['defer' => true]);
        echo $this->Html->script('library/Jquery-Validate/jquery.validate.min.js',['defer' => true]);
        echo $this->Html->script('library/datepicker/js/bootstrap-datepicker.js',['defer' => true]);
        echo $this->Html->script('actions/main.js',['defer' => true]);
	$this->end();
	
	if($userId == false){
        $this->start('modals');
            echo $this->element('Modal/create_account_modal');
            echo $this->element('Modal/login_modal');
        $this->end();
    }else{
        $this->start('modals');
            echo $this->element('Modal/logout_modal');
        $this->end();
    }
?>

<div class="row">
	<div class="panel panel-default col-md-6 col-md-offset-3">
		<div class="panel-heading">
			<h3 class="panel-title span7 text-center title">Formulário de Email</h3>
		</div>
		<div class="panel-body">
			<?= $this->Form->create(null, ['url' => ['controller' => '', 'action' => ''], 'type' => 'post', 'id' => 'email-form', 'class' => 'form-horizontal']) ?>
				<div class="form-group">
					<label for="email" class="control-label col-md-3">Seu Email</label>
					<div class="col-md-9">
						<?= $this->Form->text('email', ['type' => 'email', 'class' => 'form-control', 'placeholder' => 'Email']) ?>
					</div>
				</div>
				<div class="form-group">
					<label for="name" class="control-label col-md-3">Seu Nome</label>
					<div class="col-md-9">
						<?= $this->Form->text('name', ['class' => 'form-control', 'placeholder' => 'Nome']) ?>
					</div>
				</div>
				<div class="form-group">
					<label for="subject" class="control-label col-md-3">Assunto</label>
					<div class="col-md-9">
						<?= $this->Form->text('subject', ['class' => 'form-control', 'placeholder' => 'Assunto']) ?>
					</div>
				</div>
				<div class="form-group">
					<label for="message" class="control-label col-md-3">Mensagem</label>
					<div class="col-md-9">
						<?= $this->Form->textarea('message', ['class' => 'form-control', 'rows' => '3', 'placeholder' => 'Mensagens']) ?>
					</div>
				</div>
				<div class="form-group text-center">
					<div class="col-md-6 col-md-offset-3">
						<?= $this->Form->button('Limpar', ['type' => 'reset', 'class' => 'btn btn-danger']) ?>
						<?= $this->Form->button('Enviar', ['type' => 'submit', 'class' => 'btn btn-info']) ?>
					</div>
				</div>
			<?= $this->Form->end() ?>
		</div>
		<div class="panel-footer span7 text-center">
			<?= $this->Html->link('Voltar ao Site',['controller' => 'CustomStaticPages', 'action' => 'index']) ?>
		</div>
	</div>
</div>