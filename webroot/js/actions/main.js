/**
 * Usado no cadastro da cada usuário dentro do modal de cadastramento de 
 * usuário contido no "Navbar" (componente usado em todas as telas).
 * 
 * Objetivo: gerar o calendário da data de nascimento.
 *
 * Independente e não relaciona com qualquer outra função.
 */
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

/**
 * Usado no login da cada usuário dentro do modal de login de 
 * usuário contido no "Navbar" (componente usado em todas as telas). 
 * 
 * Objetivo: submeter o formulário de cadastro do usuário e exibir
 * o resultado do cadastro (conseguiu ou não se cadastrar).
 *
 * Utiliza a função: "displayMessage", "defaultAjaxErrorHandler" e "functionAjax".
 */
$('#submit-login').click(function(){
    var settings = [];
	settings['url'] = 'http://localhost:8765/users/login';
	settings['type'] = 'post';
	settings['data'] = $('#login-form').serialize();
	settings['beforeSend'] = '';
	settings['success'] = function(response){
			displayMessage('#login_modal', '.message', response);
		}
	settings['error'] = function(XMLHttpRequest, textStatus, errorThrown){
            defaultAjaxErrorHandler(XMLHttpRequest,textStatus,errorThrown);
        }
	settings['dataType'] = 'json';
	settings['global'] = false;
	functionAjax(settings);
});

/**
 * Usado em diversas telas e modais por ser uma função generica e essencial 
 * para exibição e estilização de mensagens do back-end para o front-end.
 *
 * Objetivo: encapsular as chamadas para as funções que imprimem e estilizão
 * as mensagens vindas do back-end e recarregar a página.
 * 
 * Utiliza a função: "printMessage" e "styleMessage".
 * 
 * @param string parentId
 * @param string messageLocal
 * @param Object response
 * @return void
 */
function displayMessage(parentId, messageLocal, response){
    printMessage(parentId, messageLocal, response);
    styleMessage(parentId, messageLocal, response);
    if(response['type'] === 'Sucesso'){
        location.reload();
    }
}

/**
 * Usado em diversas telas e modais por ser uma função generica e essencial 
 * para impressão de mensagens do back-end para o front-end.
 *
 * Objetivo: imprimir no formato de frase as propriedades do objeto retornado 
 * pelo back-end.
 * 
 * Independente mas é chamada por outras funções.
 * 
 * @param string parentId
 * @param string messageLocal
 * @param Object response
 * @return void
 */
function printMessage(parentId, messageLocal, response){
    var message = '';
    for(var item in response){
        if(response[item] != null){
            message += response[item] + ' - ';
        }
    }
    $(parentId + ' ' + messageLocal).text(message.slice(0,-3));
}

/**
 * Usado em diversas telas e modais por ser uma função generica e essencial 
 * para estilização de mensagens do back-end para o front-end.
 *
 * Objetivo: estilizar a frase por meio de adição de classes a frase construida
 * pelas propriedades do objeto retornado pelo back-end.
 * 
 * Independente mas é chamada por outras funções.
 * 
 * @param string parentId
 * @param string messageLocal
 * @param Object response
 * @return void
 */
function styleMessage(parentId, messageLocal, response){
    if(response['type'] === 'Erro'){
        $(parentId + ' ' + messageLocal).addClass('error');
        $(parentId + ' ' + messageLocal).removeClass('success');
        $(parentId + ' ' + messageLocal).removeClass('warning');
    }else if(response['type'] === 'Sucesso'){
        $(parentId + ' ' + messageLocal).addClass('success');
        $(parentId + ' ' + messageLocal).removeClass('warning');
        $(parentId + ' ' + messageLocal).removeClass('error');
    }else if(response['type'] === 'Cuidado'){
        $(parentId + ' ' + messageLocal).addClass('warning');
        $(parentId + ' ' + messageLocal).removeClass('error');
        $(parentId + ' ' + messageLocal).removeClass('success');
    }
}

/**
 * Usado no processo de exclusão de cadastro de usuário dentro da página 
 * de perfil do usuário. 
 * 
 * Objetivo: submeter o formulário de exclusão de perfil do usuário e exibir
 * o resultado da exclusão (conseguiu ou não se excluir).
 *
 * Utiliza a função: "displayMessage", "defaultAjaxErrorHandler" e "functionAjax".
 * @param string URL de exclusão de perfis de usuário.
 */
function deleteAccount(url){
    var settings = [];
	settings['url'] = url;
	settings['type'] = 'post';
	settings['data'] = '';
	settings['beforeSend'] = '';
	settings['success'] = function(response){
			displayMessage('#delete_account_modal', '.message', response);
		}
	settings['error'] = function(XMLHttpRequest, textStatus, errorThrown){
            defaultAjaxErrorHandler(XMLHttpRequest,textStatus,errorThrown);
        }
	settings['dataType'] = 'json';
	settings['global'] = false;
	functionAjax(settings);
}

/**
 * Usado no processo de edição de perfil de usuário dentro do modal de edição 
 * de perfil dentro da página de perfil do usuário. 
 * 
 * Objetivo: submeter o formulário de edição de perfil do usuário e exibir
 * o resultado da edição (conseguiu ou não editar).
 *
 * Utiliza a função: "displayMessage", "defaultAjaxErrorHandler" e "functionAjax".
 * @param string URL de edição de perfis de usuário.
 */
function editAccount(url){	
	var settings = [];
	settings['url'] = url;
	settings['type'] = 'post';
	settings['data'] = $('#edit-profile-form').serialize();
	settings['beforeSend'] = '';
	settings['success'] = function(response){
			displayMessage('#edit_profile_modal', '.message', response);
		}
	settings['error'] = function(XMLHttpRequest, textStatus, errorThrown){
            defaultAjaxErrorHandler(XMLHttpRequest,textStatus,errorThrown);
        }
	settings['dataType'] = 'json';
	settings['global'] = false;
	functionAjax(settings);
}

/**
 * Usado no cadastro da cada usuário dentro do modal de cadastramento de 
 * usuário contido no "Navbar" (componente usado em todas as telas). 
 * 
 * Objetivo: submeter o formulário de cadastro do usuário e exibir
 * o resultado do cadastro (conseguiu ou não se cadastrar).
 *
 * Utiliza a função: "displayMessage", "defaultAjaxErrorHandler" e "functionAjax".
 */
$('#submit-crete-account').click(function(){
	var settings = [];
	settings['url'] = 'http://localhost:8765/users/add';
	settings['type'] = 'post';
	settings['data'] = $('#create-account-form').serialize();
	settings['beforeSend'] = '';
	settings['success'] = function(response){
			displayMessage('#create_account_modal', '.message', response);
		}
	settings['error'] = function(XMLHttpRequest, textStatus, errorThrown){
            defaultAjaxErrorHandler(XMLHttpRequest,textStatus,errorThrown);
        }
	settings['dataType'] = 'json';
	settings['global'] = false;
	functionAjax(settings);
});

/**
 * Faz download das strings (dentro de um arquivo .json) do que serão usadas 
 * no autocomplete e chama a função responsável pelo autocomplete que esta 
 * contido no navbar e presente em todas as telas do site.
 *
 * Utiliza a função: "autoCompleteMulti".
 */
$.getJSON("http://localhost:8765/json/products.json", function (products) {
    autoCompleteMulti(products, '#search');
});

/**
 * Realiza o bind do autocomplete ao input expecifico.
 *
 * Independente mas é chamada por outra função.
 * @param array Array de palavras usadas no autocomplete.
 * @param string String com o seletor do elemento que terá o autocomplete.
 */
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

/**
 * Função auxiliar à "autoCompleteMulti" na criação do auto complete 
 * multiplo.
 *
 * Independente mas é chamada pela função "autoCompleteMulti".
 */
function split(val){
    return val.split(/ \s*/);
}

/**
 * Função auxiliar à "autoCompleteMulti" na criação do auto complete 
 * multiplo.
 *
 * Independente mas é chamada pela função "autoCompleteMulti".
 */
function extractLast(term){
    return split(term).pop();
}

/**
 * Usado no cadastro da cada usuário dentro do modal de cadastramento de 
 * usuário contido no "Navbar" (componente usado em todas as telas). 
 * 
 * Objetivo: gerar um popover com as informações de como deve ser a senha
 * do usuário.
 *
 * Independente e não relaciona com qualquer outra função.
 */
$("#password").popover({
    title: 'A senha deve conter entre 8 e 16 caracteres, incluindo:',
    content: '<ul><li>Letras Maiusculas</li><li>Letras Minusculas</li><li>Numeros</li></ul>',
    trigger: 'hover',
    placement: 'right'
});

/**
 * Usado no cadastro da cada usuário dentro do modal de cadastramento de 
 * usuário contido no "Navbar" (componente usado em todas as telas). 
 * 
 * Objetivo: passar as regras de validação de cadastro de usuário no front-end 
 * pelo plugin jquery-validate. 
 *
 * Independente e não relaciona com qualquer outra função.
 */
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

/**
 * Usado em todas as telas para fazer com que o usuario seja lançado ao topo
 * da página assim que o elemento seja clicado. presente em todas as telas.
 *
 * Independente e não relaciona com qualquer outra função.
 */
$('#back-top').click(function(){
    $('html, body').animate({scrollTop: 0}, 'slow');
    return false;
});

/*$("#search-form").submit(function(event){
 event.preventDefault();
 action = $(this).attr('action') + '/' + document.getElementById('search').value;
 window.location.href = action;
 });*/

$('#products-order').change(function(){
	redirect(this);
});

/**
 * Usado na tela de localhost/product/search.
 * 
 * Objetivo: redirecionar automaticamente quando o usuário clicar em uma opção 
 * do combobox.
 *
 * Independente e não relaciona com qualquer outra função.
 * @param DOMElement elemento option
 * @return void
 */
function redirect(option){
    location = option.value;
}

$('#products-view').change(function(){
	changeLimitPagination(this);
});

function changeLimitPagination(option){
	location.search = $.query.set('limit', option.value).toString();
}

/**
 * Usado em todas as telas.
 * 
 * Objetivo: imprimir no console o resultado de erro de uma função ajax.
 *
 * Independente mas é chamada por todas as funções ajax.
 * 
 * @param Object
 * @param Object 
 * @param Object 
 * @return void
 */
function defaultAjaxErrorHandler(XMLHttpRequest,textStatus,errorThrown){
	console.log(XMLHttpRequest);
	console.log(textStatus);
	console.log(errorThrown);
}

/**
 * Usado em todas as telas.
 * 
 * Objetivo: emcapsular um função ajax.
 *
 * Independente mas é chamada por outras funções.
 * 
 * @param array Array associativo com os parametros usados na função ajax.
 * @return void
 */
function functionAjax(settings){
    $.ajax({
		type: settings['type'],
        url: settings['url'],
		data: settings['data'],
		beforeSend: settings['beforeSend'],
        success: settings['success'],
        error: settings['error'],
        dataType: settings['dataType'],
        global: settings['global']
    });
}

var productThumbSlider = {
    slideWidth: 250,
    minSlides: 1,
    maxSlides: 3,
    moveSlides: 1,
    auto: false
};

var viewProductSlider = $("#view-product-modal .product-slider").bxSlider(productThumbSlider);
$('#view-product-modal').on('shown.bs.modal',function(e){
    viewProductSlider.reloadSlider();
});

$('#edit-store-products .product-slider').bxSlider(productThumbSlider);

$('#edit-store .product-slider').bxSlider(productThumbSlider);