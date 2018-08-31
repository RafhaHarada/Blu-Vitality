<%-- 
    Document   : financas
    Created on : 27/08/2018, 10:47:48
    Author     : Alunos
--%>

<jsp:include page="../model/header.jsp"/>
<div class="card">
</div>    
<div class="card-content">
    <h1>Finanças</h1>
    <p >I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
</div>
<div class="card-tabs container">
    <ul class="tabs tabs-transparent red darken-3">
        <li class="tab"><a href="#test4" class="white-text">Finanças Gerais</a></li>
        <li class="tab"><a href="#test5">Finanças Funcionários</a></li>
        <li class="tab"><a href="#test6" class="white-text">Finanças Pacientes</a></li>
        <li class="tab"><a href="#test7" class="white-text">Finanças Hospital</a></li>
    </ul>
    <div class="card-content orange lighten-4 row">
        <div id="test4"><a class="red darken-3 btn modal-trigger white-text row" href="#modal1">Lucro</a><div id="test4"><a class="red darken-3 btn modal-trigger white-text row" href="#modal2">Despesas</a>
                <div id="test4"><a class="red darken-3 btn modal-trigger white-text" href="#modal3">Receita</a>
                    <!-- Modal Structure -->
                    <div id="modal1" class="modal">
                        <div class="modal-content">
                            <h4>Lucro</h4>
                            <div class="card-image">
                                <img src="../resources/images/grafico_teste3.png" >
                            </div>
                            <div class="modal-footer">
                                <a href="#!" class="modal-close waves-effect waves-green btn-flat">X</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="modal2" class="modal">
                    <div class="modal-content">
                        <h4>Despesas</h4>
                        <div class="card-image">
                            <img src="../resources/images/grafico_teste2.png" >
                        </div>
                        <div class="modal-footer">
                            <a href="#!" class="modal-close waves-effect waves-green btn-flat">X</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="modal3" class="modal">
                <div class="modal-content">
                    <h4>Receita</h4>
                    <div class="card-image">
                        <img src="../resources/images/grafico_teste.png" >
                    </div>
                    <div class="modal-footer">
                        <a href="#!" class="modal-close waves-effect waves-green btn-flat">X</a>
                    </div>
                </div>
            </div>
        </div>
        <div id="test5">Test 2</div>
        <div id="test6">Test 3</div>
        <div id="test7">Test 4</div>
    </div>
</div>
</div>
<jsp:include page="../model/footer.jsp"/>
