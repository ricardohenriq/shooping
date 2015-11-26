Dropzone.autoDiscover = false;
var addMediasDropzone = new Dropzone('#addMediasDropzone', { // The camelized version of the ID of the form element
    url: 'http://localhost:8765/products/upload',
    autoProcessQueue: false,
    uploadMultiple: true,
    parallelUploads: 100,
    maxFiles: 3,
    previewsContainer: ".dropzone-previews"
});

$("#submit-new-medias").click(function (e){
    addMediasDropzone.processQueue();
});