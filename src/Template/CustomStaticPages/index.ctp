<?php
    $this->start('meta');
		echo $this->Html->meta('viewport','width=device-width, initial-scale=1.0');
        echo $this->Html->meta('title','Stores');
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
        echo $this->Html->css('library/bxslider-4-4.1.2/jquery.bxslider.css');
        
		echo $this->Shrink->css(['styles/style.css', 'styles/menu-plugin.css']);
		echo $this->Shrink->fetch('css');
	$this->end();
	
	$this->start('script');
		echo $this->Html->script('library/jquery-1.11.1/jquery-1.11.1.min.js',['defer' => true]);
        echo $this->Html->script('library/jquery-ui-1.11.2.custom/jquery-ui.min.js',['defer' => true]);
        echo $this->Html->script('library/Bootstrap/js/bootstrap.min.js',['defer' => true]);
        echo $this->Html->script('library/Jquery-Validate/jquery.validate.min.js',['defer' => true]);
        echo $this->Html->script('library/datepicker/js/bootstrap-datepicker.js',['defer' => true]);
        echo $this->Html->script('library/bxslider-4-4.1.2/jquery.bxslider.min.js',['defer' => true]);
        
		echo $this->Shrink->js(['actions/main.js', 'actions/index.js']);
		echo $this->Shrink->fetch('js');
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
	<?= $this->element('Body/news') ?>
</div>
<div class="row">
	<?= $this->element('Body/categories') ?>
	<?= $this->element('Body/offers') ?>
</div>
<div class="row">
	<?= $this->element('Body/small_banners') ?>
</div>
<div class="row">
	<?= $this->element('Body/product_trends') ?>
</div>
<div class="row">
	<?= $this->element('Body/full_banner') ?>
</div>
<div class="row">
	<?= $this->element('Footer/footer_newsletter') ?>
</div>