$('.date').datepicker({
    format: "yyyy/mm/dd",
    //startDate:"2012-01-01",
    //endDate:"2015-01-01",
    todayBtn: "linked",
    viewMode: "years",
    autoclose: true,
    todayHighlight: true,
    orientation: "top"
});

var addBannerModalClicked = false;
$('[data-target=#add_banner_modal]').click(function(){
    if(addBannerModalClicked === false) {
        $.getJSON("../json/countries.json", function (countries) {
            for (var i = 0; i < countries.length; i++) {
                $('.country').append('<option value=\"' + countries[i].code + '\">' + countries[i].name + '</option>');
            }
        });
        addBannerModalClicked = true;
    }
});

$('#submit-login').click(function(){
    var url = 'users/login';
    var formData = $('#login-form').serialize();
    ajaxJsonData(displayLoginMessage, url, formData)
});

function displayLoginMessage(response){
    var parentId = '#login_modal';
    var messageLocal = '.message';
    printMessage(parentId, messageLocal, response);
    styleMessage(parentId, messageLocal, response);
    if(response['code'] === 2){
        location.reload();
    }
}

function printMessage(parentId, messageLocal, response){
    var message = '';
    for(var item in response){
        if(response[item] != null){
            message += response[item] + ' - ';
        }
    }
    $(parentId + ' ' + messageLocal).text(message.slice(0,-3));
}

var possibleErrorCodes = [1,3,5];
var possibleSuccessCodes = [2,4,7];
var possibleWarningCodes = [6];

function styleMessage(parentId, messageLocal, response){
    if($.inArray(response['code'], possibleErrorCodes) !== -1){
        $(parentId + ' ' + messageLocal).addClass('error');
    }else if($.inArray(response['code'], possibleSuccessCodes) !== -1){
        $(parentId + ' ' + messageLocal).addClass('success');
    }else if($.inArray(response['code'], possibleWarningCodes) !== -1){
        $(parentId + ' ' + messageLocal).addClass('warning');
    }
}

$.getJSON("../json/products.json", function (products) {
    autoCompleteMulti(products, '#search');
});

function autoCompleteMulti(words, selector){
    $(selector).bind("keydown", function(event){
        if(event.keyCode === $.ui.keyCode.TAB &&
            $(this).autocomplete("instance").menu.active){
            event.preventDefault();
        }
    })
    .autocomplete({
        minLength: 2,
        source: function(request, response){
            var results = $.ui.autocomplete.filter(
                words, extractLast(request.term));
            response(results.slice(0, 10));
        },
        focus: function(){
            return false;
        },
        select: function(event, ui){
            var terms = split(this.value);
            terms.pop();
            terms.push( ui.item.value );
            terms.push("");
            this.value = terms.join(" ");
            return false;
        }
    });
}

function split(val){
    return val.split(/ \s*/);
}

function extractLast(term){
    return split(term).pop();
}

$("#password").popover({
    title: 'A senha deve conter entre 8 e 16 caracteres, incluindo:',
    content: '<ul><li>Letras Maiusculas</li><li>Letras Minusculas</li><li>Numeros</li></ul>',
    trigger: 'hover',
    placement: 'right'
});

$("#login-form").validate({
    rules: {
        email: {
            required: true,
            minlength: 8
        },
        password: "required"
    },
    messages: {
        email: {
            required: "Please provide your Login",
            minlength: "Your Login must be at least 8 characters"
        },
        pass: "Please provide your password"
    }
});

$('#offers-slide').bxSlider({
    slideWidth: 812,
    minSlides: 1,
    maxSlides: 1,
    moveSlides: 1,
    auto: true
});

$('#news-slide').bxSlider({
    slideWidth: 240,
    minSlides: 1,
    maxSlides: 5,
    moveSlides: 1,
    slideMargin: 10,
    infiniteLoop: false,
    auto: true,
    pager: false
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

$('#back-top').click(function(){
    $('html, body').animate({scrollTop: 0}, 'slow');
    return false;
});

$('#most-pupular-subcat').change(function(){
    var selectId = '#most-pupular-subcat';
    var selectContainer = '#most-popular-container';
    var url = 'products/most-popular';
    var ulSlider = 'most-popular-products';
    changeProducts(selectId, selectContainer, url, ulSlider);
});

$('#best-sellers-subcat').change(function(){
    var selectId = '#best-sellers-subcat';
    var selectContainer = '#best-sellers-container';
    var url = 'products/most-popular';
    var ulSlider = 'best-sellers-products';
    changeProducts(selectId, selectContainer, url, ulSlider);
});

$('#releases-subcat').change(function(){
    var selectId = '#releases-subcat';
    var selectContainer = '#releases-container';
    var url = 'products/most-popular';
    var ulSlider = 'releases-products';
    changeProducts(selectId, selectContainer, url, ulSlider);
});

function changeProducts(selectId, selectContainer, url, ulSlider) {
    $.ajax({
        type: 'post',
        url: url,
        data: {
            subCategory: $(selectId).val()
        },
        beforeSend: function () {
            $(selectContainer).empty();
            $(selectContainer).append('<img src="img/loader.gif" class="img-loader">');
        },
        success: function (products) {
            $(selectContainer).empty();
            formatProducts(products, ulSlider, selectContainer);
        },
        dataType: 'json',
        global: false
    });
}

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

$("#product-img").elevateZoom({
    galleryActiveClass: 'active',
    gallery: 'product-gallery',
    cursor: 'crosshair',
    zoomType: 'inner'
});

/*$("#search-form").submit(function(event){
 event.preventDefault();
 action = $(this).attr('action') + '/' + document.getElementById('search').value;
 window.location.href = action;
 });*/

function redirect(option){
    location = option.value;
}

function ajaxJsonData(functionToExecute, url, dataProperties){
    $.ajax({
        type: 'post',
        url: url,
        data: dataProperties,
        success: function (response) {
            functionToExecute(response);
        },
        dataType: 'json',
        global: false
    });
}

function viewBanner(url){
    var dataProperties = null;
    ajaxJsonData(formatViewSmallFullBanner, url, dataProperties);
}

function formatViewSmallFullBanner(banner){
    if(banner.banner_type_id === 1){
        $('#banner-pic-modal').addClass('picture-left');
        $('#banner-info').addClass('banner-information');
    }else if(banner.banner_type_id === 2){
        $('#banner-pic-modal').removeClass('picture-left');
        $('#banner-info').removeClass('banner-information');
        $('#banner-pic-modal').css('max-width','100%');
    }
    formatViewBanner(banner);
}

function formatViewBanner(banner){
    $('#banner-name-modal').text(banner.banner_description);
    $('#banner-pic-modal').attr('src', '/img/' + banner.path_banner);
    $('#banner-id-modal').text(banner.id);
    $('#banner-type-modal').text(banner.banner_type_id);
    $('#banner-url-redirect-modal').text(banner.url_redirect);
    $('#banner-created-modal').text(banner.created);
    $('#banner-modified-modal').text(banner.modified);
    /*$('#banner-clicks-modal').text(banner.clicks);*/
    $('#banner-description-modal').text(banner.banner_description);
}

function formatEditSmallFullBanner(banner){
    if(banner.banner_type_id === 1){
        $('#banner-pic-modal').addClass('picture-left');
        //$('#banner-info').addClass('banner-information');
    }else if(banner.banner_type_id === 2){
        $('#banner-pic-modal').removeClass('picture-left');
        //$('#banner-info').removeClass('banner-information');
        $('#banner-pic-modal').css('max-width','100%');
    }
    formatEditBanner(banner);
}

function editBanner(url){
    var dataProperties = null;
    ajaxJsonData(formatEditSmallFullBanner, url, dataProperties);
}

function formatEditBanner(banner){
    $('#banner-pic-edit-modal').attr('src', '/img/' + banner.path_banner);
    $('#link-edit').attr('value', banner.url_redirect);
    $('#title-edit').attr('value', banner.banner_description);
    /*$('#show-times-edit').attr('value', banner.banner_description);*/
    /*$('#show-user-edit').attr('value', banner.banner_description);*/
}

$(function(){
    var legendKeyValue = {
        "VAGA":"#CF000F",
        "CALCADOS":"#19B5FE",
        "COMIDA":"#22313F",
        "VESTUARIO":"#F9690E",
        "ADERECOS":"#2ECC71"
    };

    $('#mall-map').vectorMap({
        map:'mall',
        backgroundColor:'transparent',
        series:{
            regions:[{
                values:{
                    loja_A:"VAGA",
                    loja_B:"CALCADOS",
                    loja_C:"COMIDA",
                    loja_D:"VESTUARIO",
                    loja_E:"ADERECOS",
                    loja_F:"COMIDA",
                    loja_G:"VAGA",
                    loja_H:"VESTUARIO",
                    loja_I:"VAGA",
                    loja_J:"CALCADOS",
                    loja_K:"VAGA",
                    loja_L:"COMIDA",
                    loja_M:"VESTUARIO",
                    loja_N:"CALCADOS",
                    loja_O:"ADERECOS",
                    loja_P:"VAGA",
                    loja_Q:"CALCADOS",
                    loja_R:"VAGA",
                    loja_S:"COMIDA",
                    loja_T:"VESTUARIO",
                    loja_U:"VAGA",
                    loja_V:"ADERECOS",
                    loja_W:"VAGA",
                    loja_X:"COMIDA",
                    loja_Y:"CALCADOS",
                    loja_Z:"VAGA",
                    loja_1:"VESTUARIO",
                    loja_2:"ADERECOS",
                    loja_3:"CALCADOS",
                    loja_4:"VESTUARIO"
                },
                scale:legendKeyValue
            }]
        },
        onRegionTipShow: function(event, label, code){
            /*Pode chamar uma função passando o 'code' para recuperar os
             dados de uma consulta*/
            label.html("<img src=\"http://localhost/PROJETOS/ShoppingResources/stores/facade/loja-fachada.png\">" +
                "<h4>" + label.html() + "</h4>" +
                "<p>" + "Descricao Descricao Descricao Descricao Descricao " + "</p>" +
                "<span>" + "Local: A#9" + "</span>"
            );
        },
        onRegionClick: function(event, code){
            /*Pode se criar uma URL com o 'code' da Loja*/
            location = "https://pt.wikipedia.org/";
        }
    });

    createMapLegend(legendKeyValue);
});

function createMapLegend(legendKeyValue){
    for(var key in legendKeyValue){
        var divContainer = document.createElement('div');
        var divColor = document.createElement('div');

        $(divContainer).addClass('legend-container');

        $(divColor).addClass('legend-color');
        $(divColor).css('background-color', legendKeyValue[key]);

        $(divContainer).append(divColor);
        $(divContainer).append('<span> - '+key+'</span>');
        $('#mall-map-legend').append(divContainer);
    }
}