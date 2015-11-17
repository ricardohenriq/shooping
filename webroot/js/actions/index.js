/**
 * Usado na página inicial do site e somente nela.
 * CustomStaticPages/home.tpl
 * 
 * Objetivo: gerar um slider de ofertas.
 *
 * Independente e não relaciona com qualquer outra função.
 */
$('#offers-slide').bxSlider({
    slideWidth: 812,
    minSlides: 1,
    maxSlides: 1,
    moveSlides: 1,
    auto: true
});

/**
 * Usado na página inicial do site e somente nela.
 * CustomStaticPages/home.tpl
 * 
 * Objetivo: gerar um slider de noticias.
 *
 * Independente e não relaciona com qualquer outra função.
 */
$('#news-slide').bxSlider({
	slideWidth: 500,
	minSlides: 1,
	maxSlides: 6,
	moveSlides: 1,
	auto: true,
    pager: false,
	controls: false
});

/**
 * Objeto global com as configurações padrão dos sliders de 
 * produtos "Mais vendidos", "Mais visitados" e "Mais novos".
 */
trendProductsSliderConfig = {
    slideWidth: 250,
    minSlides: 1,
    maxSlides: 1,
    moveSlides: 1,
    auto: true,
    pager: false
};

/**
 * Usado na página inicial do site e somente nela.
 * CustomStaticPages/home.tpl
 * 
 * Objetivo: gerar um slider de produtos "Mais visitados".
 *
 * Independente e não relaciona com qualquer outra função.
 */
$('#most-popular-products').bxSlider(trendProductsSliderConfig);

/**
 * Usado na página inicial do site e somente nela.
 * CustomStaticPages/home.tpl
 * 
 * Objetivo: gerar um slider de produtos "Mais vendidos".
 *
 * Independente e não relaciona com qualquer outra função.
 */
$('#best-sellers-products').bxSlider(trendProductsSliderConfig);

/**
 * Usado na página inicial do site e somente nela.
 * CustomStaticPages/home.tpl
 * 
 * Objetivo: gerar um slider de produtos "Mais novos".
 *
 * Independente e não relaciona com qualquer outra função.
 */
$('#releases-products').bxSlider(trendProductsSliderConfig);

/**
 * Usado na página inicial do site e somente nela.
 * CustomStaticPages/home.tpl
 * 
 * Objetivo: criar um array de configuração de chamada ajax e chamar a 
 * função ajax que retornará um json com os pordutos "Mais visitados" de 
 * determinada categoria.
 *
 * Independente mas chama função ajax.
 */
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

/**
 * Usado na página inicial do site e somente nela.
 * CustomStaticPages/home.tpl
 * 
 * Objetivo: criar um array de configuração de chamada ajax e chamar a 
 * função ajax que retornará um json com os pordutos "Mais vendidos" de 
 * determinada categoria.
 *
 * Independente mas chama função ajax.
 */
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

/**
 * Usado na página inicial do site e somente nela.
 * CustomStaticPages/home.tpl
 * 
 * Objetivo: criar um array de configuração de chamada ajax e chamar a 
 * função ajax que retornará um json com os pordutos "Mais novos" de 
 * determinada categoria.
 *
 * Independente mas chama função ajax.
 */
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

/**
 * Usado na página inicial do site e somente nela.
 * CustomStaticPages/home.tpl
 * 
 * Objetivo: criar todos os containers (adicionar seus atributos, classes e css) e 
 * adicionar as imagens dentro do container; Este container é especifico, é 
 * o de um slide já gerado pelo plugin bx.slider.
 *
 * É chamada dentro dos: $('#most-pupular-subcat').change | $('#best-sellers-subcat').change |
 * $('#releases-subcat').change
 * 
 * @param Object json Contendo os produtos retornados pela função ajax.
 * @param string onde deverá ficar o slide.
 * @param string o container do slide.
 */
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
        $(img).attr('src', products[i]['thumb']);
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

/**
 * Usado na página inicial do site e somente nela.
 * CustomStaticPages/home.tpl
 * 
 * Objetivo: criar um array de configuração de chamada ajax e chamar a 
 * função ajax que retornará um json com o estado da subscrição do formulário 
 * de newsletter.
 *
 * Independente mas chama função ajax.
 */
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