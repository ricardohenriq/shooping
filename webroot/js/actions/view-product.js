/**
 * Usado na página inicial do site e somente nela.
 * Products/view.tpl
 * 
 * Objetivo: gerar o zoom do produto.
 *
 * Independente e não relaciona com qualquer outra função.
 */
$('#product-img').elevateZoom({
    galleryActiveClass:'active',
    gallery:'product-gallery',
    cursor:'crosshair',
    zoomType:'inner'
});

$('body').on('mouseenter', '.zoomWindow', function(){
	$(this).hide();
    var dimensions = getElementHeightWidth(this);
    hideElementByDimension(dimensions, this);
});

function getElementHeightWidth(element){
    var path = $(element).css('background-image').replace('url', '').replace('(', '').replace(')', '').replace('"', '').replace('"', '');
    var tempImg = '<img id="tempImg" src="' + path + '">';
    $('body').append(tempImg);
    $('#tempImg').hide();
    var dimensions = [];
    dimensions['height'] = $('#tempImg').height();
    dimensions['width'] = $('#tempImg').width();
    $('#tempImg').remove();
    return dimensions;
}

function hideElementByDimension(dimensions, element){
    if(dimensions['height'] >= 550 || dimensions['width'] >= 550){
        $(element).show();
    }
}