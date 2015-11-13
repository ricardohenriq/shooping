$('#offers-slide').bxSlider({
    slideWidth: 812,
    minSlides: 1,
    maxSlides: 1,
    moveSlides: 1,
    auto: true
});

trendProductsSliderConfig = {
    slideWidth: 250,
    minSlides: 1,
    maxSlides: 1,
    moveSlides: 1,
    auto: true,
    pager: false
};

$('#most-popular-products').bxSlider(trendProductsSliderConfig);

$('#best-sellers-products').bxSlider(trendProductsSliderConfig);

$('#releases-products').bxSlider(trendProductsSliderConfig);

$('#most-pupular-subcat').change(function(){
	var settings = [];
	settings['url'] = 'http://localhost:8765/products/product-trends/' + $('#most-pupular-subcat').val();
	settings['type'] = 'get';
	settings['data'] = '';
	settings['beforeSend'] = function(){
			$('#most-popular-container').empty();
            $('#most-popular-container').append('<img src="img/loader.gif" class="img-loader">');
		}
	settings['success'] = function(response){
			$('#most-popular-container').empty();
            formatProducts(response, 'most-popular-products', '#most-popular-container');
		}
	settings['error'] = function(XMLHttpRequest, textStatus, errorThrown){
            defaultAjaxErrorHandler(XMLHttpRequest,textStatus,errorThrown);
        }
	settings['dataType'] = 'json';
	settings['global'] = false;
	functionAjax(settings);
});

$('#best-sellers-subcat').change(function(){	
	var settings = [];
	settings['url'] = 'http://localhost:8765/products/product-trends/' + $('#best-sellers-subcat').val();
	settings['type'] = 'get';
	settings['data'] = '';
	settings['beforeSend'] = function(){
			$('#best-sellers-container').empty();
            $('#best-sellers-container').append('<img src="img/loader.gif" class="img-loader">');
		}
	settings['success'] = function(response){
			$('#best-sellers-container').empty();
            formatProducts(response, 'best-sellers-products', '#best-sellers-container');
		}
	settings['error'] = function(XMLHttpRequest, textStatus, errorThrown){
            defaultAjaxErrorHandler(XMLHttpRequest,textStatus,errorThrown);
        }
	settings['dataType'] = 'json';
	settings['global'] = false;
	functionAjax(settings);
});

$('#releases-subcat').change(function(){
	var settings = [];
	settings['url'] = 'http://localhost:8765/products/product-trends/' + $('#releases-subcat').val();
	settings['type'] = 'get';
	settings['data'] = '';
	settings['beforeSend'] = function(){
			$('#releases-container').empty();
            $('#releases-container').append('<img src="img/loader.gif" class="img-loader">');
		}
	settings['success'] = function(response){
			$('#releases-container').empty();
            formatProducts(response, 'releases-products', '#releases-container');
		}
	settings['error'] = function(XMLHttpRequest, textStatus, errorThrown){
            defaultAjaxErrorHandler(XMLHttpRequest,textStatus,errorThrown);
        }
	settings['dataType'] = 'json';
	settings['global'] = false;
	functionAjax(settings);
});

function formatProducts(products, ulSlider, selectContainer) {

    var divWrapper = document.createElement('div');
    $(divWrapper).css({
        'max-width': '250px',
        'margin': '0px auto'
    });

    var divViewport = document.createElement('div');
    $(divViewport).addClass('bx-viewport');
    $(divViewport).css({
        'width': '100%',
        'overflow': 'hidden',
        'position': 'relative',
        'height': '320px'
    });

    var ul = document.createElement('ul');
    $(ul).attr('id', ulSlider);

    var productsLength = products.length;
    for (var i = 0; i < productsLength; i++) {
        var li = document.createElement("li");

        var div = document.createElement("div");
        $(div).addClass('item-block');

        var img = document.createElement("img");
        $(img).attr('alt', products[i]['product_name']);
        $(img).attr('src', 'img/' + products[i]['thumbnail']);
        $(div).append(img);

        var spanName = document.createElement("span");
        $(spanName).addClass('item-name');
        $(spanName).text(products[i]['product_name']);
        $(div).append(spanName);

        if (products[i]['price'] < products[i]['old_price']) {
            var spanOldPrice = document.createElement("span");
            $(spanOldPrice).addClass('item-old-price');
            $(spanOldPrice).text('De R$ ' + products[i]['price']);
            $(div).append(spanOldPrice);
        }

        var spanPrice = document.createElement("span");
        $(spanPrice).addClass('item-price');
        $(spanPrice).text('R$ ' + products[i]['price']);
        $(div).append(spanPrice);
        //$(div).append(document.createElement("br"));

        $(li).append(div);
        $(ul).append(li);
    }

    $(selectContainer).append(ul);
    $('#' + ulSlider).bxSlider(trendProductsSliderConfig);
}

$('#submit-subscribe-form').click(function(){
	var settings = [];
	settings['url'] = 'http://localhost:8765/subscribers/add';
	settings['type'] = 'post';
	settings['data'] = $('#subscribe-form').serialize();
	settings['beforeSend'] = '';
	settings['success'] = function(response){
			displayMessage('#subscribe-area', '.message', response);
		}
	settings['error'] = function(XMLHttpRequest, textStatus, errorThrown){
            defaultAjaxErrorHandler(XMLHttpRequest,textStatus,errorThrown);
        }
	settings['dataType'] = 'json';
	settings['global'] = false;
	functionAjax(settings);
});