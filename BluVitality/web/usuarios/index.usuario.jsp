<%-- 
    Document   : index
    Created on : 27/08/2018, 08:14:38
    Author     : Nattana Matos
--%>

<jsp:include page="../model/header.jsp"/>

<div class="row container">
    <ul class="tabs tabs-transparent">
        <li class="tab"><a href="#Sobre1" class="active teal-text">Paciente</a></li>
        <li class="tab"><a href="#Sobre2" class="teal-text">Acompanhante</a></li>
        <li class="tab"><a href="#Sobre3" class="teal-text">Observações</a></li>
        <li class="tab"><a href="#Sobre4" class="teal-text">Consultas</a></li>
    </ul>
    <div id="Sobre1" class="col s12 blue">

        <!--div class="row">
            <div class="collection">
                <div class="col s6 left">
                    <div class="collection-item col s12">
                        <div class="col s3">
                            <div class="teal-text">Nome</div>
                        </div>
                        <div class="col s9">
                            <div>Nattana</div>
                        </div>
                    </div>
                    <div class="collection-item">CPF:123.456.789-10</div>
                    <div class="collection-item">RG:12.346-567</div>
                    <div class="collection-item">Endereço:Rua das flores,345,Jardim</div>
                    <div class="collection-item">Cidade:Nova Jesse</div>
                    <div class="collection-item">Estado:NY</div>
                </div>
            </div-->

        <ul class="collection">
    <li class="collection-item avatar">
      <img src="images/yuna.jpg" alt="" class="circle">
      <span class="Nome">Nome</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
    <li class="collection-item avatar">
      <i class="material-icons circle">folder</i>
      <span class="Nome">Nome</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
    <li class="collection-item avatar">
      <i class="material-icons circle green">insert_chart</i>
      <span class="title">Title</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
    <li class="collection-item avatar">
      <i class="material-icons circle red">play_arrow</i>
      <span class="title">Title</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
  </ul>


        <div class="col s12 right">
            <a class="btn-floating btn-large cyan pulse right"><i class="material-icons">edit</i></a>
        </div>
    </div>
</div>
<div id="Sobre2" class="col s12 container red">

    <nav>
        <div class="nav-wrapper">
            <form>
                <div class="input-field">
                    <input id="search" type="search" required>
                    <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                    <i class="material-icons">close</i>
                </div>
            </form>
        </div>
    </nav>


</div>
<div id="Sobre3" class="col s12 container green">


</div>
<div id="Sobre4" class="col s12 container green">


</div>
</div>





<jsp:include page="../model/footer.jsp"/>
