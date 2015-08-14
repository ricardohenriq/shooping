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

function getBanner(url){
    $.ajax({
     type: 'post',
     url: url,
     success: function (response) {
        formatSmallFullBanner(response);
     },
     dataType: 'json',
     global: false
     });
}

function formatSmallFullBanner(banner){
    if(banner.banner_type_id === 1){
        $('#banner-pic-modal').addClass('picture-left');
        $('#banner-info').addClass('banner-information');
    }else if(banner.banner_type_id === 2){
        $('#banner-pic-modal').removeClass('picture-left');
        $('#banner-info').removeClass('banner-information');
        $('#banner-pic-modal').css('max-width','100%');
    }
    formatBanner(banner);
}

function formatBanner(banner){
    document.getElementById('banner-name-modal').innerHTML = banner.banner_description;
    document.getElementById('banner-pic-modal').src = '/img/' + banner.path_banner;
    document.getElementById('banner-id-modal').innerHTML = banner.id;
    document.getElementById('banner-type-modal').innerHTML = banner.banner_type_id;
    document.getElementById('banner-url-redirect-modal').innerHTML = banner.url_redirect;
    document.getElementById('banner-created-modal').innerHTML = banner.created;
    document.getElementById('banner-modified-modal').innerHTML = banner.modified;
    /*document.getElementById('banner-clicks-modal').innerHTML = banner.clicks;*/
    document.getElementById('banner-description-modal').innerHTML = banner.banner_description;
}