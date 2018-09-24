$(document).ready(function () {
    $("#btn-cancelar").click(function () {
        $.ajax({
            url: "/busca/usuario/cpf",
            success: function (result) {
                $("#adastro-nome-completo").val(result.nome);
                $("#cadastro-sexo").val(result.sexo);
                $("#cadastro-emai").val(result.email);
                $("#cadastro-cpf").val(result.cpf);
                $("#cadastro-rg").val(result.rg);
                $("#cadastro-idade").val(result.idade);
                $("#cadastro-estado-civil").val(result.estado_civil);
                $("#cadastro-telefone").val(result.telefone);
                $("#cadastro-endereco").val(result.endereco);
                $("#cadastro-cep").val(result.cep);
                $("#cadastro-complemento").val(result.complemento);
                $("#cadastro-naturalidade").val(result.naturalildade);
                $("#cadastro-uf").val(result.uf);

            }
        });
    });
});