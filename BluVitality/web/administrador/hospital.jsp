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
            <li class="tab"><a href="#hospitalEquipamentos" class="teal-text waves-effect">Equipamentos</a></li>
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

        <div id="hospitalConfig" class="col s12 scrollBarOnDiv">

            <div id="test1" class="col s12">
                <ul class="collapsible">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons"></i>
                            <span class="flow-text teal-text">Listar</span>
                            <span class="badge"></span></div>
                        <div class="collapsible-body">
                            <ul class="collapsible">
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Adicinar
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Remover
                                        <span class="badge "></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Mover Quarentena
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons"></i>
                            <span class="flow-text teal-text">Quartos</span>
                            <span class="badge"></span>
                        </div>
                        <div class="collapsible-body">
                            <ul class="collapsible">
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Adicinar
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Remover
                                        <span class="badge "></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Mover Quarentena
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Remover Quarentena
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons"></i>
                            <span class="flow-text teal-text">Alas</span>
                            <span class="badge "></span></div>
                        <div class="collapsible-body">
                            <ul class="collapsible">
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Adicinar
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Remover
                                        <span class="badge "></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Mover Quarentena
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Remover Quarentena
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons"></i>
                            <span class="flow-text teal-text">Manutenção</span>
                            <span class="badge"></span></div>
                        <div class="collapsible-body">
                            <ul class="collapsible">
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Adicinar
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Remover
                                        <span class="badge "></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Mover Quarentena
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                                <li>
                                    <div class="collapsible-header">
                                        <i class="material-icons"></i>
                                        Remover Quarentena
                                        <span class="badge"></span></div>
                                    <div class="collapsible-body"></div>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
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


