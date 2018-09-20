<%-- 
    Document   : prontuarioBusca
    Created on : 20/09/2018, 08:14:11
    Author     : Alunos
--%>

<div id="Funcionarios2" class="scrollBarOnDiv">
    <div class="prontuarioBusca container">
        <form  action="/funcionario/prontuario" method="GET">
            <div class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">textsms</i>
                        <input type="text" id="autocomplete-input" class="autocomplete">
                        <label for="autocomplete-input">Nome</label>
                    </div>
                </div>
            </div>
        </form>  
        <div>
            <a href="/funcionario/prontuario" class="btn teal botaoBuscar">Busca Prontuário</a>
        </div>
    </div>
</div> 