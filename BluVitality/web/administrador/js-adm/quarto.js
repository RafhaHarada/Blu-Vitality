//Adicionar-Quarto
jQuery_2_1_1(function () {

    jQuery_2_1_1("#quarto-cadastro-salvar").on('click', function () {
        jQuery_2_1_1.ajax({
            url: '/quarto/store',
            method: 'post',
            data: {
                'numeroQuarto': jQuery_2_1_1('#quarto-cadastro-numero-quarto').val(),
                'tipo': jQuery_2_1_1("#quarto-cadastro-tipo").val(),
                'status': jQuery_2_1_1("#quarto-cadastro-status").val()
            }

        });
    });
});

//Remover-Quarto
jQuery_2_1_1(function () {

    jQuery_2_1_1("#quarto-cadastro-remover").on('click', function () {
        jQuery_2_1_1.ajax({
            url: '/',
            method: 'post',
            data: {
                'numeroQuarto': jQuery_2_1_1('#remover-numero-quarto').val(),
                'tipo': jQuery_2_1_1("#quarto-remover-tipo").val(),
            }
        });
    });
});


//Mover-Quarto-quarentena
jQuery_2_1_1(function () {

    jQuery_2_1_1("#quarto-mover-quarentena").on('click', function () {
        jQuery_2_1_1.ajax({
            url: '/',
            method: 'post',
            data: {
                'numeroQuarto': jQuery_2_1_1('#remover-numero-quarto').val(),
                'tipo': jQuery_2_1_1("#quarto-remover-tipo").val(),
            }
        });
    });
});

//Remover-Quarto-quarentena
jQuery_2_1_1(function () {

    jQuery_2_1_1("#quarto-remover-quarentena").on('click', function () {
        jQuery_2_1_1.ajax({
            url: '/',
            method: 'post',
            data: {
                'numeroQuarto': jQuery_2_1_1('#remover-numero-quarto').val(),
                'tipo': jQuery_2_1_1("#quarto-remover-tipo").val(),
            }
        });
    });
});

jQuery_2_1_1(
        function () {
            jQuery_2_1_1('#quarto-cadastro-numero-quarto').on('click', function () {
                        jQuery_2_1_1(this).val('');
                    }
            );
        jQuery_2_1_1('#quarto-cadastro-numero-quarto').click(
                    function (){
                        if (jQuery_2_1_1('#quarto-cadastro-numero-quarto').val()=='') {
                            alert('Campo numero vazi');
                        }
                    }    
                    )
 
 
});

$(function () {
    $("#quarto-index").DataTable({
        "ajax": "/quartos/obtertodosparadatatable",
        
        "columns": [
            {"data": "numero_quarto"},
            {"data": "tipo"},
            {"data": "status"},
            {"data": "id"},
            {
                "data": null,
                
        }
            
        ]
    });
});


