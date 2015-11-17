/**
 * Usado na página inicial do site e somente nela.
 * Products/view.tpl
 * 
 * Objetivo: gerar o zoom do produto.
 *
 * Independente e não relaciona com qualquer outra função.
 */
$("#product-img").elevateZoom({
    galleryActiveClass: 'active',
    gallery: 'product-gallery',
    cursor: 'crosshair',
    zoomType: 'inner'
});