var addBannerModalClicked = false;
$('[data-target=#add_banner_modal]').click(function(){
    if(addBannerModalClicked === false) {
        $.getJSON("http://localhost:8765/json/countries.json", function (countries) {
            for (var i = 0; i < countries.length; i++) {
                $('.country').append('<option value=\"' + countries[i].code + '\">' + countries[i].name + '</option>');
            }
        });
        addBannerModalClicked = true;
    }
});

function viewBanner(url){	
	var settings = [];
	settings['url'] = url;
	settings['type'] = 'get';
	settings['data'] = '';
	settings['beforeSend'] = '';
	settings['success'] = function(response){
			formatViewSmallFullBanner(response);
			formatViewBanner(response);
		}
	settings['error'] = function(XMLHttpRequest, textStatus, errorThrown){
            defaultAjaxErrorHandler(XMLHttpRequest,textStatus,errorThrown);
        }
	settings['dataType'] = 'json';
	settings['global'] = false;
	functionAjax(settings);
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
}

function formatViewBanner(banner){
    $('#banner-name-modal').text(banner.banner_description);
    $('#banner-pic-modal').attr('src', banner.path_banner);
    $('#banner-id-modal').text(banner.id);
    $('#banner-type-modal').text(banner.banner_type_id);
    $('#banner-url-redirect-modal').text(banner.url_redirect);
    $('#banner-created-modal').text(banner.created);
    $('#banner-modified-modal').text(banner.modified);
    /*$('#banner-clicks-modal').text(banner.clicks);*/
    $('#banner-description-modal').text(banner.banner_description);
}

function editBanner(url){
	var settings = [];
	settings['url'] = url;
	settings['type'] = 'get';
	settings['data'] = '';
	settings['beforeSend'] = '';
	settings['success'] = function(response){
			formatEditSmallFullBanner(response);
			formatEditBanner(response);
		}
	settings['error'] = function(XMLHttpRequest, textStatus, errorThrown){
            defaultAjaxErrorHandler(XMLHttpRequest,textStatus,errorThrown);
        }
	settings['dataType'] = 'json';
	settings['global'] = false;
	functionAjax(settings);
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
}

function formatEditBanner(banner){
    $('#banner-pic-edit-modal').attr('src', '/img/' + banner.path_banner);
    $('#link-edit').attr('value', banner.url_redirect);
    $('#title-edit').attr('value', banner.banner_description);
    /*$('#show-times-edit').attr('value', banner.banner_description);*/
    /*$('#show-user-edit').attr('value', banner.banner_description);*/
}