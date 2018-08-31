<%-- 
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     :@Gustavo Rodrigues (gugaaroodrigues@gmail.com)

--%>

<jsp:include page="../model/header.jsp"/>

<div class="row">
    <div class="container  center" style="margin-top: auto">
        <div class="divider"></div>
        <ul class="tabs tabs-transparent">
            <li class="tab"><a href="#hospital1" class="active teal-text waves-effect">Hospital</a></li>
            <li class="tab"><a href="#hospitalConfig" class="teal-text waves-effect">Configuração</a></li>
            <li class="tab"><a href="#hospital3" class="teal-text waves-effect">Equipamentos</a></li>
            <li class="tab"><a href="#hospitalFuncionarios" class="teal-text waves-effect">Funcionarios</a></li>
            <li class="tab"><a href="#hospital5" class="teal-text waves-effect">Eventos</a></li>
        </ul>
        <div class="divider"></div>
        <nav>
                    <div class="nav-wrapper teal lighten-1">
                        <form>
                            <div class="input-field">
                                <input id="search" type="search" required>
                                <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                                <i class="material-icons">close</i>
                            </div>
                        </form>
                    </div>
                </nav>
        <div id="hospital1" class="col s12 container">
            <div class="row blue-grey darken-1">
                <h3>Seja Bem vindo</h3>
            </div>
                 
        </div>

        <div id="hospitalConfig" class="col s12 container">
            <div class="row">
                
            </div>
        </div>

        <div id="hospital3" class="col s12 container">
            <div class="">

            </div>
        </div>
        <div id="hospitalFuncionarios" class="col s12 container">
            <div class="">

            </div>
        </div>

        <div id="hospital5" class="col s12 container">
            <div class="">

            </div>
        </div>

        <div id="hospital2" class="col s12 container">
            <div class="">

            </div>
        </div>




    </div>
</div>


<jsp:include page="../model/footer.jsp"/>    


