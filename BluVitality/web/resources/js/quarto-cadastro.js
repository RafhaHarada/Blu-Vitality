jQuery_2_1_1(function () {

    jQuery_2_1_1("#quarto-cadastro-salvar").on('click', function () {
        jQuery_2_1_1.ajax({
            url: '/hospital/store',
            method: 'post',
            data: {
                'numeroQuarto': jQuery_2_1_1('#quarto-cadastro-numero-quarto').val(),
                'tipo': jQuery_2_1_1("#quarto-cadastro-tipo").val(),
                'status': jQuery_2_1_1("#quarto-cadastro-status").val()
            }

        });
    });
});