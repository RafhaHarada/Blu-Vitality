<%-- 
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     : @Luana Patricia Duarte
    @Gustavo Rodrigues (gugaaroodrigues@gmail.com) 

--%>
<jsp:include page="../model/header.jsp"/>

<h4>Funcionários</h4>

<div class="row">
    <div class="container">
        <ul class="tabs tabs-transparent">
            <li class="tab"><a href="#Servicos1" class="active teal-text">Perfil</a></li>
            <li class="tab"><a href="#Servicos2" class="teal-text">Acesso ao Prontuário</a></li>
            <li class="tab"><a href="#Servicos3" class="teal-text">Cursos e Eventos</a></li>
            <li class="tab"><a href="#Servicos4" class="teal-text">Informações</a></li>
            <li class="tab"><a href="#Servicos5" class="teal-text">Teste</a></li>
            <li class="tab"><a href="#Servicos6" class="teal-text">Teste</a></li>
            <li class="tab"><a href="#Servicos7" class="teal-text">Teste</a></li>
            <li class="tab"><a href="#Servicos8" class="teal-text">Teste</a></li>
            <li class="tab"><a href='#Servicos9' class="teal-text">Teste</a></li>
            <li class="tab"><a href='#Servicos10' class="teal-text">Teste</a></li>
            <li class="tab"><a href='#Servicos11' class="teal-text">Teste</a></li>
        </ul>
        
        <div id="Servicos1" class="col s12 container">
            <table>
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>Nome 1</td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Nome 2</td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Nome 3</td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>

        </div>
        <div id="Servicos2" class="col s12 container">
                <div class="col s12">
                    <div class="row">
                        <div class="row">
                            <form class="col s12">
                                <div class="row">
                                    <div class="input-field col s6">
                                        <input placeholder="Digite aqui" id="first_name" type="text" class="validate">
                                        <label for="first_name">Nome</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <input placeholder="Digite aqui" id="first_name" type="text" class="validate">
                                        <label for="first_name">Prontuário</label>
                                    </div>

                                </div>
                        </div>
                    </div>
                </div>
            </div>     
                <div id="Servicos3" class="col s12 container">
                    <table>
                        <thead>
                            <tr>
                                <th>Cursos</th>
                                <th>Data</th>
                                <th>Local</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>Palestra 1</td>
                                <td>01/01/2019</td>
                                <td>Hospital Blu Vitality</td>
                            </tr>
                            <tr>
                                <td>Palestra 2</td>
                                <td>05/10/2018</td>
                                <td>Hospital Blu Vitality</td>
                            </tr>
                            <tr>
                                <td>Palestra 3</td>
                                <td>10/12/2018</td>
                                <td>Hospital Blu Vitality</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="Servicos4" class="col s12 container">Test 4

                </div>
                <div id="Servicos5" class="col s12 container purple">Test 5

                </div>
                <div id="Servicos6" class="col s12 container orange">Test 6

                </div>
                <div id="Servicos7" class="col s12 container brown">Test 7

                </div>
                <div id="Servicos8" class="col s12 container cyan">Test 8

                </div>
                <div id="Servicos9" class="col s12 container grey">Test 9

                </div>
                <div id="Servicos10" class="col s12 container indigo">Test 10

                </div>
                <div id="Servicos11" class="col s12 container pink">Test 2

                </div>
                <div id="Servicos12" class="col s12 container amber">Test 3

                </div>
            </div>
        </div>



        <jsp:include page="../model/footer.jsp"/>
