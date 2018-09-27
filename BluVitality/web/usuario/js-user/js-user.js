/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//Cadastro
function validacaoTipoArquivo() {
    var fileName = document.getElementById("cadastro-foto").value;
    var idxDot = fileName.lastIndexOf(".") + 1;
    var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
    if (extFile === "jpg" || extFile === "jpeg" || extFile === "png") {
        //TO DO
    } else {
        M.toast({html: 'Insira apenas imagens de extensão jpg, jpeg ou png'});
        document.getElementById("cadastro-foto").value = "";
    }
}
function validacaoEmBranco(id, campo) {
    var emBranco = document.getElementById(id).value;
    if (emBranco === "") {
        M.toast({html: '<span class="red-text">O campo ' + campo + ' não pode estar vazio<span>'});
        return;
    }
}

function atualizaTab() {
    var maxHeight = 0;
    $('.carousel-item').each(function () {
        if ($(this).height() > maxHeight)
            maxHeight = $(this).height();
    });
    $(".tabs-content").css('height', maxHeight + 'px');
}

var tipoAgendamento = 0;
$(function () {
    $(".agendarE").hide();
    $(".agendarC").hide();

    $(".exameRadio").on("click", function () {
        $(".agendarE").show();
        document.getElementById("exame-cadastro-tipo").value = "Exame";
        $(".agendarC").hide();
        document.getElementById("consulta-cadastro-id-usuario").value = "";
        document.getElementById("consulta-cadastro-id-funcionario").value = "";
        document.getElementById("consulta-cadastro-nome").value = "";
        document.getElementById("consulta-cadastro-tipo").value = "";
        document.getElementById("consulta-cadastro-data").value = "";
        document.getElementById("consulta-cadastro-hora").value = "";
        document.getElementById("consulta-cadastro-custo").value = "";
        atualizaTab();
    });

    $(".consultaRadio").on("click", function () {
        $(".agendarC").show();
        document.getElementById("consulta-cadastro-tipo").value = "Consulta";
        $(".agendarE").hide();
        document.getElementById("exame-cadastro-id-usuario").value = "";
        document.getElementById("exame-cadastro-id-funcionario").value = "";
        document.getElementById("exame-cadastro-nome").value = "";
        document.getElementById("exame-cadastro-tipo").value = "";
        document.getElementById("exame-cadastro-data").value = "";
        document.getElementById("exame-cadastro-hora").value = "";
        document.getElementById("exame-cadastro-custo").value = "";
        tipoAgendamento = 2;
        atualizaTab();
    });

    $('#expedicao-cadastrar').on('click', function () {
            if($('exame-cadastro-convenio').isChecked()){
                var custo = 1000;
        	document.getElementById("exame-cadastro-custo").value = custo;
            }else if($('consulta-cadastro-convenio').isChecked()){
                var custo = 500;
        	document.getElementById("consulta-cadastro-custo").value = custo;
            }else{
        	document.getElementById("exame-cadastro-custo").value = "0";
        	document.getElementById("consulta-cadastro-custo").value = "0";
		}
    });
});
