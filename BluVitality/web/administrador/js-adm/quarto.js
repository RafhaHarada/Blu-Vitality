//Adicionar-Quarto
$(function () {

    $('#quarto-cadastro-salvar').on('click', function () {
        $.ajax({
            url: '/quarto/store',
            method: 'post',
            data: {
                'numeroQuarto': $('#quarto-cadastro-numero-quarto').val(),
                'tipo': $('#quarto-cadastro-tipo').val(),
                'status': $('#quarto-cadastro-status').val()
            }
        });
    });
//Remover-Quarto
    $('#quarto-cadastro-remover').on('click', function () {
        $.ajax({
            url: '/',
            method: 'post',
            data: {
                'numeroQuarto': $('#remover-numero-quarto').val(),
                'tipo': $('#quarto-remover-tipo').val(),
            }
        });
    });
//Mover-Quarto-quarentena
    $('#quarto-mover-quarentena').on('click', function () {
        $.ajax({
            url: '/',
            method: 'post',
            data: {
                'numeroQuarto': $('#remover-numero-quarto').val(),
                'tipo': $('#quarto-remover-tipo').val(),
            }
        });
    });
});




