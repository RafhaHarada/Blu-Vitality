<%-- 
    Document   : agendamentos
    Created on : 20/09/2018, 09:54:20
    Author     : Alunos
--%>

<div id="Funcionarios3" class="scrollBarOnDiv">
    <div class="card-panel teal lighten-4">
        <span class="teal-text teatl lighten-4 ">Voc� deseja agendar<span class="red-text">*</span></span>
    </div>
    <div>
        <label>
            <input class="with-gap exameRadio" name="group1" type="radio" />
            <span class="teal-text">Exame</span>
        </label>
    </div>

    <div class="agendarE container">

    </div>
    <div>
        <label>
            <input class="with-gap consultaRadio" name="group1" type="radio" />
            <span class="teal-text">Consulta</span>
        </label>
    </div>

    <div class="agendarC container">
        <div class="row">
            <div class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">textsms</i>
                        <input type="text" id="autocomplete-input" class="autocomplete">
                        <label class="teal-text" for="autocomplete-input">Motivo da consulta (por ex:Dor de cabe�a,tonturas etc...)</label>
                    </div>
                </div>
            </div>
        </div>

        <label class="teal-text">Escolha a especialide</label>
        <select class="browser-default row">
            <option value="" disabled selected>Especialidades</option>
            <option value="1">Cl�nico geral</option>
            <option value="2">Cardiologista</option>
            <option value="3">Endocrinologista</option>
            <option value="3">Ginecologista</option>
            <option value="3">Oftalmologista</option>
            <option value="3">Ortopedista</option>
            <option value="3">Otorrinolaringologista</option>
            <option value="3">Psiquiatra</option>
        </select>

        <label class="teal-text">Escolha o m�dico</label>
        <select class="browser-default row">
            <option value="" disabled selected>M�dicos</option>
            <option value="1">Option 1</option>
            <option value="2">Option 2</option>
            <option value="3">Option 3</option>
            <option value="3">Option 3</option>
            <option value="3">Option 3</option>
            <option value="3">Option 3</option>
            <option value="3">Option 3</option>
        </select>
        <div class="row">
            <div class="col s5 left">
                <span class="teal-text teatl lighten-4">Qual a data de sua prefer�ncia?<span class="red-text">*</span></span>
                <input type="text" class="datepicker">
            </div>

            <div class="col s5 right">
                <label class="teal-text">Escolha o hor�rio desejado</label>
                <select class="browser-default row">
                    <option value="" disabled selected>Hor�rios</option>
                    <option value="1">Option 1</option>
                    <option value="2">Option 2</option>
                    <option value="3">Option 3</option>
                    <option value="3">Option 3</option>
                    <option value="3">Option 3</option>
                    <option value="3">Option 3</option>
                    <option value="3">Option 3</option>
                    <option value="3">Option 3</option>
                    <option value="3">Option 3</option>
                    <option value="3">Option 3</option>
                </select>
            </div>
        </div>

        <div class="card-panel">
            <span class="teal-text teatl lighten-4 ">Como deseja sua resposta?<span class="red-text">*</span></span>
        </div>

        <form action="#">
            <div>
                <label class="teal-text">
                    <input type="checkbox" />
                    <span>Telefoe</span>
                </label>
            </div>

            <form action="#">
                <div>
                    <label class="teal-text">
                        <input type="checkbox" />
                        <span>Email</span>
                    </label>
                </div>
                <!-- Modal Trigger -->
                <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Agendar</a>

                <!-- Modal Structure -->
                <div id="modal1" class="modal">
                    <div class="modal-content">
                        <h4></h4>
                        <p>A disponibilidade de m�dicos e hor�rios est� sujeito a altera��es </p>
                    </div>
                    <div class="modal-footer">
                        <a href="#!" class="modal-close waves-effect waves-green btn-flat">Concordo</a>
                    </div>
                </div>
            </form>
    </div>
</div>

