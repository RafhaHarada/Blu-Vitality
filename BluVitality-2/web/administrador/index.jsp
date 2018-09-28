<%-- 
    Document   : Index
    Created on : 27/09/2018, 18:34:18
    Author     : Gus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Import Google Icon Font-->
        <link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>



        <link rel='stylesheet' type='text/css' href='../resources/bootstrap/css/bootstrap.min.css'>
        <link rel='stylesheet' type='text/css' href='../resources/css/custom.css'>
        <link rel='stylesheet' type='text/css' href='../resources/css/jquery.dataTables.min.css'>
        <link rel='stylesheet' type='text/css' href='../resources/css/select2.min.css'>
        <link rel='stylesheet' type='text/css' href='../resources/css/select2.min.css'>

        <title>Blu - Vitality</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
            <a class="navbar-brand mr-auto mr-lg-0" href="#"></a>
            <button class="navbar-toggler " type="button" data-toggle="offcanvas">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Inicio <span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Funcionarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Quartos</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Definir</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="#">Opção1</a>
                            <a class="dropdown-item" href="#">--</a>
                            <a class="dropdown-item" href="#">não sei</a>
                        </div>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav><br>

        <main role="main" class="container  mt-5 my-2 ">
            <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded shadow-sm">
                <img class="mr-3" src="../resources/images/logo.gif" alt="" width="90" height="48">
            </div>

            <button type="submit" class="btn btn-primary addquarto ml-4" style="float: right;" id="addquarto">Adicionar</button>

            <div class="my-3 p-3 bg-white rounded shadow-sm divquarto">
                <h6 class="border-bottom border-gray pb-2 mb-0 ">Usuarios</h6>
                <div class="media text-muted pt-3">
                    <%@include file="formulario-servicos.jsp" %>
                </div>
            </div>

            <div class="my-3 p-3 bg-white rounded shadow-sm">
                <h6 class="border-bottom border-gray pb-2 mb-0">Alguma Coisa</h6>
                <div class="media text-muted pt-3">
                    <%@include file="table/table-ultimos-servicos.jsp" %>
                </div>
        </main>

        <!--   JavaScript Setup  -->
        <script type="text/javascript" src="../resources/js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="../resources/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="../administrador/js-adm/servicos.js"></script>
        <script type="text/javascript" src="../administrador/js-adm/administracao.js"></script>
        <script type="text/javascript" src="../administrador/js-adm/funcionarios.js"></script>
        <script type="text/javascript" src="../administrador/js-adm/quarto.js"></script>
        <script type="text/javascript" src="../administrador/js-adm/usuarios.js"></script>
        <script type="text/javascript" src="../administrador/js-adm/vavidacao.js"></script>
        <script type="text/javascript" src="../resources/bootstrap/js/bootstrap.js"></script>
        <script type="text/javascript" src="../resources/js/google-platform.js"></script>
        <script type="text/javascript" src="../resources/js/select2.min.js"></script>
        <script type="text/javascript" src="../resources/js/jquery.validate.min.js"></script>
        <script type="text/javascript" src="../resources/js/custom.js"></script>
    </body>
</html>
