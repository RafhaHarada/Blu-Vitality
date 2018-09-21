//Adicionar-Quarto
$(function () {

    $('#quarto-cadastro-salvar').on('click', function () {
        $.ajax({
            url: '/quarto/store',
            method: 'POST',
            data: {
                'numeroQuarto': $('#quarto-cadastro-numero-quarto').val(),
                'tipo': $('#quarto-cadastro-tipo').val()
            },
            success: function () {
                alert("Enviado com sucesso");
            }
        });
    });
    $('#tabela-funcionario').DataTable({
        'ajax': '/funcionarios/obtertodosparadatatable',
        'columns': [
            {'data': 'usuario'},
            {'data': 'cargo'},
            {'data': 'tipo'}

        ]
    });
    var tableQuarto = $('#quarto-index').DataTable({
        'ajax': '/quarto/obtertodosparadatatable',
        "columns": [
            {"data": "id"},
            {"data": "numero_quarto"},
            {"data": "titulo"},
            {"data": "id_usuario"},
            {"data": "id_funcionario"},
            {"data": "tipo"},
            {"data": "data_entrada"},
            {"data": "data_saida"},
            {"data": "status"},
            {"data": null,
                "render": function (data) {
                    return "<a class='btn btn-info' href='/interno/ticket?id=" + data.id + "'><i class='icon wb-info-circle'></i> Consultar</a>";
                }
            }
        ]
    });
    setInterval(function () {
    }, 30000);
   
    
    $('#ultimos-servicos').DataTable({
        'ajax': '/servicos/obtertodosparadatatable',
        'columns': [
            {'data': 'nome'},
            {'data': 'descricao'}
        ]
    });
    $('#tabela-usuario').DataTable({
        'ajax': '/usuarios/obtertodosparadatatable',
        'columns': [
            {'data': 'nome'},
            {'data': 'idade'},
            {'data': 'cpf'},
            {'data': 'telefone'}
        ]
    });
    
    $('#quarto-remover-tipo').select2({
        'ajax': {
            url: '/quartos/obtertodosparaselect2',
            dataType: 'Json'
        }
    });
});
