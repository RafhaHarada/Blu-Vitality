<%-- 
    Document   : agendamentos
    Created on : 20/09/2018, 09:54:20
    Author     : Luana Patricia Duarte (luanapatricia.blu@hotmail.com)
                 Nattana Matos (nattana.matos@Outlook.pt)
--%>

<div id="Funcionarios3" class="scrollBarOnDiv">
    <nav>
        <div class="nav-wrapper teal lighten-4">
            <span class="teal-text teatl lighten-4">Você deseja agendar<span class="red-text">*</span></span>
        </div>
    </nav>
    <div>
        <label>
            <input class="with-gap exameRadio" name="group1" type="radio" >
            <span class="teal-text">Exame</span>
        </label>
    </div>
    <div>
        <label>
            <input class="with-gap consultaRadio" name="group1" type="radio" >
            <span class="teal-text">Consulta</span>
        </label>
    </div>
    <!--Exame-->
    <div class="agendarE container">
        <form action="" method="">
            <div class="row">
                <div class="input-field col s12">
                    <textarea id="textarea1" name="informeexames" class="materialize-textarea"></textarea>
                    <label class="teal-text lighten-4" for="textarea1">Informe o nome dos exames</label>
                </div>
            </div>
            <div class="row">
                <div class="col s5 left">
                    <span class="teal-text teatl lighten-4">Qual a data de sua preferência?<span class="red-text">*</span></span>
                    <input id="data-exame" type="text"name="dataexame" class="datepicker">
                </div>
                <div class="col s5 right">
                    <label class="teal-text">Escolha o horário desejado</label>
                    <select class="browser-default row">
                        <option value="" disabled selected>Horários</option>
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
                <span class="teal-text teatl lighten-4 ">Forma de atendimento<span class="red-text">*</span></span>
            </div>
            <div>
                <label class="teal-text">
                    <input id="exame-convenio" name ="convenio" type="checkbox" class="ativarConvenio">
                    <span>Convênio</span>
                </label>
            </div>
            <div>
                <label class="teal-text">
                    <input id="exame-particular"name="particular" type="checkbox" >
                    <span>Particular</span>
                </label>
            </div>
            <div>
                <label class="teal-text">
                    <input id="exame-sus"name="sus" type="checkbox" >
                    <span>SUS</span>
                </label>
            </div>
            <div class="card-panel">
                <span class="teal-text teatl lighten-4 ">Como deseja sua resposta?<span class="red-text">*</span></span>
            </div>
            <div>
                <label class="teal-text">
                    <input id="exame-telefone"name="telefone" type="checkbox">
                    <span>Telefone</span>
                </label>
            </div>
            <div>
                <label class="teal-text">
                    <input id="exame-email"name="email" type="checkbox" >
                    <span>Email</span>
                </label>
            </div>
            <!-- Modal Trigger -->
            <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Agendar</a>

            <!-- Modal Structure -->
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <h4></h4>
                    <p>A disponibilidade de médicos e horários está sujeito a alterações </p>
                </div>
                <div class="modal-footer">
                    <input type="submit" value="Concordo" class="modal-close waves-effect waves-green btn-flat">
                </div>
            </div>
        </form>
    </div>
    <!--Consulta-->
    <div class="agendarC container">
        <form action="" method="">
            <div class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="autocomplete-input" class="autocomplete">
                        <label class="teal-text" for="autocomplete-input">Motivo da consulta (por ex:Dor de cabeça,tonturas etc...)</label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col s12">
                    <label class="teal-text">Escolha a especialide</label>
                    <select class="browser-default row">
                        <option value="" disabled selected>Especialidades</option>
                        <option value="1">Clínico geral</option>
                        <option value="2">Cardiologista</option>
                        <option value="3">Endocrinologista</option>
                        <option value="3">Ginecologista</option>
                        <option value="3">Oftalmologista</option>
                        <option value="3">Ortopedista</option>
                        <option value="3">Otorrinolaringologista</option>
                        <option value="3">Psiquiatra</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <label class="teal-text">Escolha o médico</label>
                    <select class="browser-default row">
                        <option value="" disabled selected>Médicos</option>
                        <option value="1">Option 1</option>
                        <option value="2">Option 2</option>
                        <option value="3">Option 3</option>
                        <option value="3">Option 3</option>
                        <option value="3">Option 3</option>
                        <option value="3">Option 3</option>
                        <option value="3">Option 3</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col s5 left">
                    <span class="teal-text teatl lighten-4">Qual a data de sua preferência?<span class="red-text">*</span></span>
                    <input type="text" class="datepicker">
                </div>

                <div class="col s5 right">
                    <label class="teal-text">Escolha o horário desejado</label>
                    <select class="browser-default row">
                        <option value="" disabled selected>Horários</option>
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
                <span class="teal-text teatl lighten-4 ">Forma de atendimento<span class="red-text">*</span></span>
            </div>
            <div>
                <label class="teal-text">
                    <input id="consulta-convenio" name ="convenio" type="checkbox" class="ativarConvenio">
                    <span>Convênio</span>
                </label>
            </div>
            <div class="tipoConvenio">
                <div>
                    <label class="teal-text">
                        <input id="consulta-particular" name="particular" type="checkbox">
                        <span>Particular</span>
                    </label>
                </div>
                <div>
                    <label class="teal-text">
                        <input id="consulta-sus" name="sus" type="checkbox">
                        <span>SUS</span>
                    </label>
                </div>
            </div>
            <div class="card-panel">
                <span class="teal-text teatl lighten-4 ">Como deseja sua resposta?<span class="red-text">*</span></span>
            </div>
            <div>
                <label class="teal-text">
                    <input id="consulta-telefone" name="telefone" type="checkbox">
                    <span>Telefone</span>
                </label>
            </div>
            <div>
                <label class="teal-text">
                    <input id="consulta-email" name="email" type="checkbox" >
                    <span>Email</span>
                </label>
            </div>
            <!-- Modal Trigger -->
            <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Agendar</a>

            <!-- Modal Structure -->
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <h4></h4>
                    <p>A disponibilidade de médicos e horários está sujeito a alterações </p>
                </div>
                <div class="modal-footer">
                    <input type="submit" value="Concordo" class="modal-close waves-effect waves-green btn-flat">
                </div>
            </div>
        </form>
    </div>
</div>


