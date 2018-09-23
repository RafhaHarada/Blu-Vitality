//Adicionar-Quarto
$(function () {
    $('#quarto-cadastro-remover').on('click', function () {
        $.ajax({
            url: '/quarto/excluir',
            method: 'POST',
            data: {
                'numeroQuarto': $('#quarto-cadastro-numero-quarto').val(),
            },
            success: function () {
                alert("Excluido com sucesso");
            }
        });
    });
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

    var tableQuarto = $('#quarto-index').DataTable({
        "ajax": "/quarto/obtertodosparadatatable",
        "language": {
            "sEmptyTable": "Nenhum registro encontrado",
            "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
            "sInfoFiltered": "(Filtrados de _MAX_ registros)",
            "sInfoPostFix": "",
            "sInfoThousands": ".",
            "sLengthMenu": "_MENU_ resultados por página",
            "sLoadingRecords": "Carregando...",
            "sProcessing": "Processando...",
            "sZeroRecords": "Nenhum registro encontrado",
            "sSearch": "Pesquisar",
            "oPaginate": {
                "sNext": "Próximo",
                "sPrevious": "Anterior",
                "sFirst": "Primeiro",
                "sLast": "Último"
            },
            "oAria": {
                "sSortAscending": ": Ordenar colunas de forma ascendente",
                "sSortDescending": ": Ordenar colunas de forma descendente"
            },
            "select": {
                "rows": {
                    "_": "Selecionado %d linhas",
                    "0": "Nenhuma linha selecionada",
                    "1": "Selecionado 1 linha"
                }
            }
        },
        "columns": [
            {"data": "id"},
            {"data": "numero_quarto"},
            {"data": "tipo"},
            {
                "data": null,
                "render": function (data) {
                    return  "<a href='#/quarto/excluir?id=" + data.id + "'><i class='material-icons'>edit</i></a>\
                    <a href='#/quarto/excluir?id=" + data.id + "'><i class='material-icons'>delete</i></a>"
                    //caminho do icone para editar na coluna funcionario
                }
            }

        ]
    });
    setInterval(function () {
    }, 30000);



    $('#ultimos-servicos').DataTable({
        'ajax': '/servicos/obtertodosparadatatable',
        "language": {
            "sEmptyTable": "Nenhum registro encontrado",
            "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
            "sInfoFiltered": "(Filtrados de _MAX_ registros)",
            "sInfoPostFix": "",
            "sInfoThousands": ".",
            "sLengthMenu": "_MENU_ resultados por página",
            "sLoadingRecords": "Carregando...",
            "sProcessing": "Processando...",
            "sZeroRecords": "Nenhum registro encontrado",
            "sSearch": "Pesquisar",
            "oPaginate": {
                "sNext": "Próximo",
                "sPrevious": "Anterior",
                "sFirst": "Primeiro",
                "sLast": "Último"
            },
            "oAria": {
                "sSortAscending": ": Ordenar colunas de forma ascendente",
                "sSortDescending": ": Ordenar colunas de forma descendente"
            },
            "select": {
                "rows": {
                    "_": "Selecionado %d linhas",
                    "0": "Nenhuma linha selecionada",
                    "1": "Selecionado 1 linha"
                }
            }
        },
        'columns': [
            {'data': 'nome'},
            {'data': 'descricao'},
            {
                "data": null,
                "render": function (data) {
                    return  "<a href='#/quarto/excluir?id=" + data.id + "'><i class='material-icons'>edit</i></a>\
                    <a href='#/quarto/excluir?id=" + data.id + "'><i class='material-icons'>delete</i></a>"
                }
            }
        ]
    });

    $('#tabela-usuario').DataTable({
        'ajax': '/usuarios/obtertodosparadatatable',
        "language": {
            "sEmptyTable": "Nenhum registro encontrado",
            "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
            "sInfoFiltered": "(Filtrados de _MAX_ registros)",
            "sInfoPostFix": "",
            "sInfoThousands": ".",
            "sLengthMenu": "_MENU_ resultados por página",
            "sLoadingRecords": "Carregando...",
            "sProcessing": "Processando...",
            "sZeroRecords": "Nenhum registro encontrado",
            "sSearch": "Pesquisar",
            "oPaginate": {
                "sNext": "Próximo",
                "sPrevious": "Anterior",
                "sFirst": "Primeiro",
                "sLast": "Último"
            },
            "oAria": {
                "sSortAscending": ": Ordenar colunas de forma ascendente",
                "sSortDescending": ": Ordenar colunas de forma descendente"
            },
            "select": {
                "rows": {
                    "_": "Selecionado %d linhas",
                    "0": "Nenhuma linha selecionada",
                    "1": "Selecionado 1 linha"
                }
            }
        },
        'columns': [
            {'data': 'nome'},
            {'data': 'idade'},
            {'data': 'cpf'},
            {'data': 'telefone'}
        ]
    });

    $('#quarto-remover-numero').select2({
        'ajax': {
            url: '/quartos/obtertodosparaselect2',
            dataType: 'Json',
            results: [
                {
                    "id": 1,
                    "text": "Option"
                }
            ]
        }
    });
});
