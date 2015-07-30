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

$('#most-popular-products').bxSlider({
    slideWidth:250,
    minSlides:1,
    maxSlides:1,
    moveSlides:1,
    slideMargin:10,
    auto:true,
    pager:false
});

$('#best-sellers-products').bxSlider({
    slideWidth:250,
    minSlides:1,
    maxSlides:1,
    moveSlides:1,
    slideMargin:10,
    auto:true,
    pager:false
});

$('#releases-products').bxSlider({
    slideWidth:250,
    minSlides:1,
    maxSlides:1,
    moveSlides:1,
    slideMargin:10,
    auto:true,
    pager:false
});

$('#back-top').click(function(){
    $('html, body').animate({scrollTop:0}, 'slow');
    return false;
});