<%-- 
    Document   : Index
    Created on : 27/09/2018, 18:34:18
    Author     : Gus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../model/navbar.jsp" %>
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

            <button type="submit" class="btn btn-primary addquarto ml-4"  id="addquarto">Adicionar</button>

            <div class=" p-3 bg-white rounded shadow-sm ">
                <div class="media text-muted pt-3 divquarto">
                <h6 class="border-bottom border-gray pb-2 mb-0 "> </h6>
                    <%@include file="formulario-servicos.jsp" %>
                </div>
                    <div class=" row col-12">                    
                    <%@include file="table/table-ultimos-servicos.jsp" %>
                </div>
            </div>

            <div class="p-3 bg-white rounded shadow-sm">
                <h6 class="border-bottom border-gray pb-2 mb-0">Serviços</h6>
                <div class="media text-muted pt-3">
                </div>
                <div class="media text-muted pt-3">
                    <%@include file="table/table-quartos.jsp" %>
                </div>
        </main> 
                    <%@include file="../model/footer.jsp" %>