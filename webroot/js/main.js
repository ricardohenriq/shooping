$( document ).ready(function(){
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
        selectId = '#most-pupular-subcat';
        selectContainer = '#most-popular-container';
        url = 'products/most-popular';
        ulSlider = 'most-popular-products';
        changeProducts(selectId, selectContainer, url, ulSlider);
    });

    $('#best-sellers-subcat').change(function(){
        selectId = '#best-sellers-subcat';
        selectContainer = '#best-sellers-container';
        url = 'products/most-popular';
        ulSlider = 'best-sellers-products';
        changeProducts(selectId, selectContainer, url, ulSlider);
    });

    $('#releases-subcat').change(function(){
        selectId = '#releases-subcat';
        selectContainer = '#releases-container';
        url = 'products/most-popular';
        ulSlider = 'releases-products';
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
                formatProducts(products, ulSlider);
            },
            error: function (response, error) {
            },
            dataType: 'json',
            global: false
        });
    }

    function formatProducts(products, ulSlider) {

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
        //var ul = document.getElementById('most-popular-products');
        $(ul).attr('id', ulSlider);
        /*$(ul).css({
         'width': '615%',
         'position': 'relative',
         'transition-duration': '0s',
         'transform': 'translate3d(-280px, 0px, 0px)'
         });*/

        var productsLength = products.length;
        for (i = 0; i < productsLength; i++) {
            var li = document.createElement("li");

            var div = document.createElement("div");
            $(div).addClass('item-block');

            var img = document.createElement("img");
            $(img).attr('alt', products[i]['product_name']);
            $(img).attr('src', 'img/' + products[i]['thumbnail']);
            $(div).append(img);

            spanName = document.createElement("span");
            $(spanName).addClass('item-name');
            $(spanName).text(products[i]['product_name']);
            $(div).append(spanName);

            if (products[i]['price'] < products[i]['old_price']) {
                spanOldPrice = document.createElement("span");
                $(spanOldPrice).addClass('item-old-price');
                $(spanOldPrice).text('De R$ ' + products[i]['price']);
                $(div).append(spanOldPrice);
            }

            spanPrice = document.createElement("span");
            $(spanPrice).addClass('item-price');
            $(spanPrice).text('R$ ' + products[i]['price']);
            $(div).append(spanPrice);
            //$(div).append(document.createElement("br"));

            $(li).append(div);
            $(ul).append(li);
            //$('#teste').append('<span>'+products[0]['product_name']+'</span><br>');
        }
        //$(divViewport).append(ul);
        //$(divWrapper).append(divViewport);
        /*$(divWrapper).append('<div class="bx-controls bx-has-controls-direction">' +
         '<div class="bx-controls-direction"><a class="bx-prev disabled" href="">Prev</a>' +
         '<a class="bx-next disabled" href="">Next</a></div></div>');*/
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
});