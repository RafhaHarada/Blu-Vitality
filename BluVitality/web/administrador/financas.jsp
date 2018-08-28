<%-- 
    Document   : financas
    Created on : 27/08/2018, 10:47:48
    Author     : Alunos
--%>

<jsp:include page="../model/header.jsp"/>
<div class="card">
    <div class="card-content">
        <h1>Finanças</h1>
        <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
    </div>
    <div class="card-tabs ">
        <ul class="tabs tabs-transparent">
            <li class="tab"><a href="#test4" class="teal-text">Finanças Gerais</a></li>
            <li class="tab"><a class="active teal-text" href="#test5">Finanças Funcionários</a></li>
            <li class="tab"><a href="#test6" class="teal-text">Finanças Pacientes</a></li>
            <li class="tab"><a href="#test7" class="teal-text">Finanças Hospital</a></li>
        </ul>
    </div>
    <div class="card-content grey lighten-4 row">
        <div id="test4">
            <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Lucro</a>

  <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <h4>Lucro</h4>
      <div class="card-image">
                <img src="../resources/images/grafico_teste2.png">
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a>
    </div>
  </div>
            </div>
        </div>
        <div id="test5">Finanças Funcionários
            
            </div>
        </div>
        <div id="test6">Finanças Pacientes</div>
        <div id="test7">Finanças Hospital</div>
    </div>
</div>
<jsp:include page="../model/footer.jsp"/>