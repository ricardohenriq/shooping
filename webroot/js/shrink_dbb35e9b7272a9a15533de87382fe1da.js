/* pre-compiled/main.js */
$('.date').datepicker({format:"yyyy/mm/dd",todayBtn:"linked",viewMode:"years",autoclose:true,todayHighlight:true,orientation:"top"});$('#submit-login').click(function(){var url='http://localhost:8765/users/login';var formData=$('#login-form').serialize();ajaxJsonData(displayLoginMessage,url,formData)});function displayLoginMessage(response){var parentId='#login_modal';var messageLocal='.message';printMessage(parentId,messageLocal,response);styleMessage(parentId,messageLocal,response);if(response['type']==='Sucesso'){location.reload();}}
function printMessage(parentId,messageLocal,response){var message='';for(var item in response){if(response[item]!=null){message+=response[item]+' - ';}}
$(parentId+' '+messageLocal).text(message.slice(0,-3));}
function styleMessage(parentId,messageLocal,response){if(response['type']==='Erro'){$(parentId+' '+messageLocal).addClass('error');$(parentId+' '+messageLocal).removeClass('success');$(parentId+' '+messageLocal).removeClass('warning');}else if(response['type']==='Sucesso'){$(parentId+' '+messageLocal).addClass('success');$(parentId+' '+messageLocal).removeClass('warning');$(parentId+' '+messageLocal).removeClass('error');}else if(response['type']==='Cuidado'){$(parentId+' '+messageLocal).addClass('warning');$(parentId+' '+messageLocal).removeClass('error');$(parentId+' '+messageLocal).removeClass('success');}}
function displayDeleteMessage(response){var parentId='#delete_account_modal';var messageLocal='.message';printMessage(parentId,messageLocal,response);styleMessage(parentId,messageLocal,response);if(response['type']==='Sucesso'){location.reload();}}
function deleteAccount(url){var formData=$('#delete-account-form').serialize();ajaxJsonData(displayDeleteMessage,url,formData)}
function displayEditMessage(response){var parentId='#edit_profile_modal';var messageLocal='.message';printMessage(parentId,messageLocal,response);styleMessage(parentId,messageLocal,response);if(response['type']==='Sucesso'){location.reload();}}
function editAccount(url){var formData=$('#edit-profile-form').serialize();ajaxJsonData(displayEditMessage,url,formData)}
function displaySubscribeMessage(response){var parentId='#subscribe-area';var messageLocal='.message';printMessage(parentId,messageLocal,response);styleMessage(parentId,messageLocal,response);}
$('#submit-crete-account').click(function(){var url='http://localhost:8765/users/add';var formData=$('#create-account-form').serialize();ajaxJsonData(displayAddMessage,url,formData)});function displayAddMessage(response){var parentId='#create_account_modal';var messageLocal='.message';printMessage(parentId,messageLocal,response);styleMessage(parentId,messageLocal,response);if(response['type']==='Sucesso'){location.reload();}}
$.getJSON("http://localhost:8765/json/products.json",function(products){autoCompleteMulti(products,'#search');});function autoCompleteMulti(words,selector){$(selector).bind("keydown",function(event){if(event.keyCode===$.ui.keyCode.TAB&&$(this).autocomplete("instance").menu.active){event.preventDefault();}}).autocomplete({minLength:2,source:function(request,response){var results=$.ui.autocomplete.filter(words,extractLast(request.term));response(results.slice(0,10));},focus:function(){return false;},select:function(event,ui){var terms=split(this.value);terms.pop();terms.push(ui.item.value);terms.push("");this.value=terms.join(" ");return false;}});}
function split(val){return val.split(/ \s*/);}
function extractLast(term){return split(term).pop();}
$("#password").popover({title:'A senha deve conter entre 8 e 16 caracteres, incluindo:',content:'<ul><li>Letras Maiusculas</li><li>Letras Minusculas</li><li>Numeros</li></ul>',trigger:'hover',placement:'right'});$("#login-form").validate({rules:{email:{required:true,minlength:8},password:"required"},messages:{email:{required:"Please provide your Login",minlength:"Your Login must be at least 8 characters"},pass:"Please provide your password"}});$('#back-top').click(function(){$('html, body').animate({scrollTop:0},'slow');return false;});function redirect(option){location=option.value;}
function ajaxJsonData(functionToExecute,url,dataProperties){$.ajax({type:'post',url:url,data:dataProperties,success:function(response){functionToExecute(response);},error:function(XMLHttpRequest,textStatus,errorThrown){console.log(XMLHttpRequest);console.log(textStatus);console.log(errorThrown);},dataType:'json',global:false});}
function viewBanner(url){var dataProperties=null;ajaxJsonData(formatViewSmallFullBanner,url,dataProperties);}
function formatViewSmallFullBanner(banner){if(banner.banner_type_id===1){$('#banner-pic-modal').addClass('picture-left');$('#banner-info').addClass('banner-information');}else if(banner.banner_type_id===2){$('#banner-pic-modal').removeClass('picture-left');$('#banner-info').removeClass('banner-information');$('#banner-pic-modal').css('max-width','100%');}
formatViewBanner(banner);}
function formatViewBanner(banner){$('#banner-name-modal').text(banner.banner_description);$('#banner-pic-modal').attr('src','/img/'+banner.path_banner);$('#banner-id-modal').text(banner.id);$('#banner-type-modal').text(banner.banner_type_id);$('#banner-url-redirect-modal').text(banner.url_redirect);$('#banner-created-modal').text(banner.created);$('#banner-modified-modal').text(banner.modified);$('#banner-description-modal').text(banner.banner_description);}
function formatEditSmallFullBanner(banner){if(banner.banner_type_id===1){$('#banner-pic-modal').addClass('picture-left');}else if(banner.banner_type_id===2){$('#banner-pic-modal').removeClass('picture-left');$('#banner-pic-modal').css('max-width','100%');}
formatEditBanner(banner);}
function editBanner(url){var dataProperties=null;ajaxJsonData(formatEditSmallFullBanner,url,dataProperties);}
function formatEditBanner(banner){$('#banner-pic-edit-modal').attr('src','/img/'+banner.path_banner);$('#link-edit').attr('value',banner.url_redirect);$('#title-edit').attr('value',banner.banner_description);}
/* pre-compiled/index-banners.js */
var addBannerModalClicked=false;$('[data-target=#add_banner_modal]').click(function(){if(addBannerModalClicked===false){$.getJSON("http://localhost:8765/json/countries.json",function(countries){for(var i=0;i<countries.length;i++){$('.country').append('<option value=\"'+countries[i].code+'\">'+countries[i].name+'</option>');}});addBannerModalClicked=true;}});