<%-- 
    Document   : receita
    Created on : 17/09/2018, 10:19:10
    Author     : Cidmar da Silva Ribeiro (cidmardsr@gmail.com)
--%>
<div class="container col s12">
    <form action='/gastoFuncionario/store' method='POST' id="validateGastoFuncionario">
        <div class="row container">
            <div class="input-field col s6">
                <label for="cadastro-salario-mensal">Salário Mensal</label>
                <input placeholder="0,00" name="salario-mensal" id="cadastro-salario-mensal" type="text" class="validate">
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <label for="cadastro-ferias-anuais-remuneradas">Férias anuais remuneradas</label>
                <input placeholder="0,00" name="ferias-anuais-remuneradas" id="cadastro-ferias-anuais-remuneradas" type="text" class="validate">
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <label for="cadastro-um-terco-sobre-ferias">Um terço sobre férias</label>
                <input placeholder="0,00" name="um-terco-sobre-ferias" id="cadastro-um-terco-sobre-ferias" type="text" class="validate">
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <label for="cadastro-decimo-terceiro-salario">13º salário</label>
                <input placeholder="0,00" name="decimo-terceiro-salario" id="cadastro-decimo-terceiro-salario" type="text" class="validate">
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <label for="cadastro-aviso-previo">Aviso prévio</label>
                <input placeholder="0,00" name="aviso-previo" id="cadastro-aviso-previo" type="text" class="validate">
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <label for="cadastro-fgts">FGTS</label>
                <input placeholder="0,00" name="fgts" id="cadastro-fgts" type="text" class="validate">
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <label for="cadastro-multa-fgts">Multa FGTS</label>
                <input placeholder="0,00" name="multa-fgts" id="cadastro-multa-fgts" type="text" class="validate">
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <label for="cadastro-inss">INSS</label>
                <input placeholder="0,00" name="inss" id="cadastro-inss" type="text" class="validate">
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <label for="cadastro-vale-transporte">Vale transporte</label>
                <input placeholder="0,00" id="cadastro-vale-transporte" name="vale-transporte" type="text" class="validate">
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <label for="cadastro-vale-refeicao">Vale refeiçao</label>
                <input placeholder="0,00" name="vale-refeicao" id="cadastro-vale-refeicao" type="text" class="validate">
            </div>
        <div class="row col s12 center input-field">
            <input type="submit" class="btn col s4" value="Cadastrar">
        </div>
</div>
    </form>