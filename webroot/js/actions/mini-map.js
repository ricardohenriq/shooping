$(function(){
    var legendKeyValue = {
        "VAGA":"#CF000F",
        "CALCADOS":"#19B5FE",
        "COMIDA":"#22313F",
        "VESTUARIO":"#F9690E",
        "ADERECOS":"#2ECC71"
    };

    $('#mall-map').vectorMap({
        map:'mall',
        backgroundColor:'transparent',
        series:{
            regions:[{
                values:{
                    loja_A:"VAGA",
                    loja_B:"CALCADOS",
                    loja_C:"COMIDA",
                    loja_D:"VESTUARIO",
                    loja_E:"ADERECOS",
                    loja_F:"COMIDA",
                    loja_G:"VAGA",
                    loja_H:"VESTUARIO",
                    loja_I:"VAGA",
                    loja_J:"CALCADOS",
                    loja_K:"VAGA",
                    loja_L:"COMIDA",
                    loja_M:"VESTUARIO",
                    loja_N:"CALCADOS",
                    loja_O:"ADERECOS",
                    loja_P:"VAGA",
                    loja_Q:"CALCADOS",
                    loja_R:"VAGA",
                    loja_S:"COMIDA",
                    loja_T:"VESTUARIO",
                    loja_U:"VAGA",
                    loja_V:"ADERECOS",
                    loja_W:"VAGA",
                    loja_X:"COMIDA",
                    loja_Y:"CALCADOS",
                    loja_Z:"VAGA",
                    loja_1:"VESTUARIO",
                    loja_2:"ADERECOS",
                    loja_3:"CALCADOS",
                    loja_4:"VESTUARIO"
                },
                scale:legendKeyValue
            }]
        },
        onRegionTipShow: function(event, label, code){
            /*Pode chamar uma função passando o 'code' para recuperar os
             dados de uma consulta*/
            label.html("<img src=\"http://localhost/PROJETOS/ShoppingResources/stores/facade/loja-fachada.png\">" +
                "<h4>" + label.html() + "</h4>" +
                "<p>" + "Descricao Descricao Descricao Descricao Descricao " + "</p>" +
                "<span>" + "Local: A#9" + "</span>"
            );
        },
        onRegionClick: function(event, code){
            /*Pode se criar uma URL com o 'code' da Loja*/
            location = "https://pt.wikipedia.org/";
        }
    });

    createMapLegend(legendKeyValue);
});

function createMapLegend(legendKeyValue){
    for(var key in legendKeyValue){
        var divContainer = document.createElement('div');
        var divColor = document.createElement('div');

        $(divContainer).addClass('legend-container');

        $(divColor).addClass('legend-color');
        $(divColor).css('background-color', legendKeyValue[key]);

        $(divContainer).append(divColor);
        $(divContainer).append('<span> - '+key+'</span>');
        $('#mall-map-legend').append(divContainer);
    }
}