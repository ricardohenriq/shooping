Dropzone.autoDiscover = false;
var myDropzone = new Dropzone('#myDropzone', { // The camelized version of the ID of the form element
	url: 'http://localhost:8765/products/upload',
	autoProcessQueue: false,
	uploadMultiple: true,
	parallelUploads: 100,
	maxFiles: 3,
	previewsContainer: ".dropzone-previews"
})

$("#submit-all").click(function (e){
	 myDropzone.on("sending", function(file, xhr, formData) {
		alert('submit');
		var fieldsAssociativeArray = getComplementedFields('#add-products-complement :input');
		appendAllFieldsToDropzone(formData, fieldsAssociativeArray); 
	});
	myDropzone.processQueue();
	
	 //$('#myDropzone').submit();
	//e.preventDefault();
	//e.stopPropagation();
	//myDropzone.processQueue();
	//appendAllFieldsToDropzone(fieldsAssociativeArray);
	//console.log(fieldsAssociativeArray);
});

function getComplementedFields(fieldId){
	var fieldsAssociativeArray = [];
	$(fieldId).each(function(){
		if(['INPUT'].indexOf($(this).context.tagName) >= 0){
			fieldsAssociativeArray.push({name:$(this).context.name, value:$(this).context.value});
		}
	});
	return fieldsAssociativeArray;
}

function appendAllFieldsToDropzone(formData, fields){
	for(var i in fields){
		formData.append(fields[i]['name'], fields[i]['value']);
		//console.log(fields[i]['name'] + " - " + fields[i]['value']);
	}
}

var productsFeatures = '';
var addProductClicked = false;
$('#add-product-button').click(function(){
	if(addProductClicked === false){
		addProductClicked = true;
		
		var settings = [];
		settings['url'] = '/json/features.json';
		settings['callback'] = function(data){
			productsFeatures = data;
			appendFeatureOptions('#feature-insert', data);
		}
		getJsonDownload(settings);
	}
});

function appendFeatureOptions(fieldID, data){
	for (var i = 0; i < data.length; i++){
		$(fieldID).append('<option value=\"' + data[i].id + '\">' + data[i].label + '</option>');
	}
}

function getJsonDownload(settings){
	$.getJSON(settings['url'], settings['callback']);
}

$('#insert-feature-button').click(function(){
	var id = $('#feature-insert').val();
	addFeatureInModal(id);
	removeFeatureOption('#feature-insert option[value="' + id + '"]');
});

function addFeatureInModal(fieldID){
	for(var i = 0; i < productsFeatures.length; i++){
		if(productsFeatures[i].id == fieldID){
			var element = createFeatureElent(productsFeatures[i]);
			appendFeatureContainer(productsFeatures[i], element, '#features-container');
			break;
		}
	}
}

function removeFeatureOption(field){
	$(field).remove();
}

function createFeatureElent(field){
	var element = document.createElement(field.tag);
	var excludedAtributtes = ['tag', 'label'];
	for(var key in field){
		if(excludedAtributtes.indexOf(key) < 0){
			$(element).attr(key, field[key]);
		}
	}
	$(element).addClass('form-control');
	return element;
}

function appendFeatureContainer(field, element, parentID){	
	var spanRemove = document.createElement('span');
	$(spanRemove).addClass('glyphicon glyphicon-remove');
	
	var remove = document.createElement('button');
	$(remove).addClass('btn btn-danger remove-button');
	$(remove).append(spanRemove);

	var elementContainer = document.createElement('div');
	$(elementContainer).addClass('col-md-6');
	$(elementContainer).append(element);
	$(elementContainer).append(remove);
	
	var label = document.createElement('label');
	$(label).attr('for', field.id);
	$(label).addClass('col-md-3 col-md-offset-1 control-label');
	$(label).append(field.label);
	
	var div = document.createElement('div');
	$(div).addClass('form-group row');
	$(div).append(label);
	$(div).append(elementContainer);
	
	$(parentID).append(div);
}

$('#reset-all').click(function(){
	emptyContainer('#features-container');
	emptyContainer('#feature-insert');
	appendFeatureOptions('#feature-insert', productsFeatures);
});

function emptyContainer(containerID){
	$(containerID).empty();
}

$('#features-container').on('click', '.remove-button', function(){
	var featureID = $(this).parent().parent().find('input').attr('id');
	//console.log(element);
	$(this).parent().parent().remove();
	var productFeature = findFeatureById(productsFeatures, featureID);
	reInsertFeatureOption('#feature-insert', productFeature);
});

function findFeatureById(productsFeatures, id){
	for(var i = 0; i < productsFeatures.length; i++){
		if(productsFeatures[i].id == id){
			return productsFeatures[i];
		}
	}
}

function reInsertFeatureOption(selectID, data){
	$(selectID).append('<option value=\"' + data.id + '\">' + data.label + '</option>');
}