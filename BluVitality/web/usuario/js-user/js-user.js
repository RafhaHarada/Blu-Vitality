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
    if (emBraco === "") {
        M.toast({html: '<span class="red-text">O campo ' + campo + ' não pode estar vazio<span>'});
        return;
    }
}


$(function () {
    $(".agendarE").hide();
    $(".agendarC").hide();

    $(".exameRadio").on("click", function () {
        $(".agendarE").show();
        $(".agendarC").hide();
        atualizaTab();

    });

    $(".consultaRadio").on("click", function () {
        $(".agendarC").show();
        $(".agendarE").hide();
        atualizaTab();
    });
});

function atualizaTab() {
    var maxHeight = 0;
    $('.carousel-item').each(function () {
        if ($(this).height() > maxHeight)
            maxHeight = $(this).height();
    });
    $(".tabs-content").css('height', maxHeight + 'px');
}