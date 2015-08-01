$('.date').datepicker({
    format:"yyyy/mm/dd",
    //startDate:"2012-01-01",
    //endDate:"2015-01-01",
    todayBtn:"linked",
    viewMode:"years",
    autoclose:true,
    todayHighlight:true,
    orientation:"top"
});

$("#pass_ca").popover({
    title:'A senha deve conter entre 8 e 16 caracteres, incluindo:',
    content:'<ul><li>Letras Maiusculas</li><li>Letras Minusculas</li><li>Numeros</li></ul>',
    trigger:'hover',
    placement:'right'
});

$("#login-form").validate({
    rules:{
        email:{
            required:true,
            minlength:8
        },
        password:"required"
    },
    messages:{
        email:{
            required:"Please provide your Login",
            minlength:"Your Login must be at least 8 characters"
        },
        pass:"Please provide your password"
    }
});

$('#offers-slide').bxSlider({
    slideWidth:812,
    minSlides:1,
    maxSlides:1,
    moveSlides:1,
    auto:true
});

$('#news-slide').bxSlider({
    slideWidth:240,
    minSlides:1,
    maxSlides:5,
    moveSlides:1,
    slideMargin:10,
    infiniteLoop:false,
    auto:true,
    pager:false
});

var mostPopularSlider =  $('#most-popular-products').bxSlider({
    slideWidth:250,
    minSlides:1,
    maxSlides:1,
    moveSlides:1,
    auto:true,
    pager:false
});

$('#best-sellers-products').bxSlider({
    slideWidth:250,
    minSlides:1,
    maxSlides:1,
    moveSlides:1,
    auto:true,
    pager:false
});

$('#releases-products').bxSlider({
    slideWidth:250,
    minSlides:1,
    maxSlides:1,
    moveSlides:1,
    auto:true,
    pager:false
});

$('#back-top').click(function(){
    $('html, body').animate({scrollTop:0}, 'slow');
    return false;
});

$('#most-pupular-subcat').change(function(){
    //alert($('#most-pupular-subcat').val());
    $.ajax({
        type:'post',
        url:'products/most-popular',
        data:{
            subCategory:$('#most-pupular-subcat').val()
        },
        beforeSend:function(){
            $('#most-popular-products').empty();
            $('#most-popular-products').append('<img src="img/loader.gif" class="img-loader">');
            //alert('Send');
        },
        success:function(products){
            //$('#most-popular-products').empty();
            //$('#most-popular-container').append('Success');
            //formatProducts(products);
            //alert('Success');
        },
        error:function(response, error){
            //$('#most-popular-products').html(error)
            //alert(error);
        },
        dataType:'json',
        global:false
    });
});

function formatProducts(products){
    console.log(JSON.stringify(products));
    //console.debug(products);

    var ul = document.getElementById('most-popular-products');
    //$(ul).attr('id','most-popular-products');

    var productsLength = products.length;
    for(i = 0; i < productsLength; i++){
        var li = document.createElement("li");

        var div = document.createElement("div");
        $(div).addClass('item-block');

        var img = document.createElement("img");
        $(img).attr('alt',products[i]['product_name']);
        $(img).attr('src','img/' + products[i]['thumbnail']);
        $(div).append(img);

        spanName = document.createElement("span");
        $(spanName).addClass('item-name');
        $(spanName).text(products[i]['product_name']);
        $(div).append(spanName);

        if(products[i]['price'] < products[i]['old_price']){
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

    //$('#most-popular-container').append(ul);
    mostPopularSlider.reloadSlider();
}