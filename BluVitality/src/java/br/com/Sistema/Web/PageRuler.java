/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Web;

import java.io.PrintWriter;

/**
 *
 * @author Alunos
 */
public class PageRuler {
    
    public static void PageTopo(PrintWriter out){
        out.println("<html>" +
"    <head>" +
"        <title>Blu Vitality</title>" +
"        <meta charset='UTF-8'>" +
"        <meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
"" +
"        <!--Import Google Icon Font-->" +
"        <link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>" +
"" +
"        <link rel='stylesheet' type='text/css' href='/BluVitality/resources/css/myCss.css'>" +
"        <link rel='stylesheet' type='text/css' href='/BluVitality/resources/css/materialize.min.css'>" +
"    </head>" +
"    <body>" +
"        <nav class='nav-extended light-green lighten-2'>" +
"            <div class='nav-content right'>" +
"                <ul id='nav-mobile' class='right hide-on-med-and-down'>" +
"                    <li><a href='#Login'>Entrar</a></li>" +
"                    <li><a href='#Registrar'>Registrar</a></li>" +
"                </ul>" +
"            </div>" +
"            <div class='nav-wrapper container'>" +
"                <a href='#Inicio' class='brand-logo'>Logo</a>" +
"                <a href='#' data-target='mobile' class='sidenav-trigger'><i class='material-icons'>menu</i></a>" +
"                <ul id='nav-mobile' class='right hide-on-med-and-down'>" +
"                    <li><a href='#Inicio'>Inicio</a></li>" +
"                    <li><a href='#Servicos'>Serviços</a></li>" +
"                    <li><a href='#Exames'>Exames</a></li>" +
"                    <li><a href='#Sobre'>Sobre</a></li>" +
"                    <li><a href='#Contatos'>Contatos</a></li>" +
"                </ul>" +
"            </div>" +
"        </nav>" +
"" +
"        <ul class='sidenav' id='mobile'>" +
"            <li><a href='#Login' class='waves-effect'><i class='material-icons'>assignment_ind</i>Entrar</a></li>" +
"            <li><a href='#Registrar' class='waves-effect'><i class='material-icons'>assignment</i>Registrar</a></li>" +
"" +
"            <li><a href='#Inicio' class='waves-effect'><i class='material-icons'>home</i>Inicio</a></li>" +
"            <li></li>" +
"            <li>" +
"                <ul class='collapsible text-bold'>" +
"                    <li>" +
"                        <div class='collapsible-header waves-effect'><i class='material-icons'>add</i>Serviços</div>" +
"                        <div class='collapsible-body'>" +
"                            <p><a href='#Servicos1' class='waves-effect sub-menu-mobile'><i class='material-icons left'>cached</i>  Serviços1</a></p>" +
"                            <p><a href='#Servicos2' class='waves-effect sub-menu-mobile'><i class='material-icons left'>dashboard</i>  Serviços2</a></p>" +
"                            <p><a href='#Servicos3' class='waves-effect sub-menu-mobile'><i class='material-icons left'>dns</i>  Serviços3</a></p>" +
"                        </div>" +
"                    </li>" +
"                    <li>" +
"                        <div class='collapsible-header waves-effect'><i class='material-icons'>add</i>Exames</div>" +
"                        <div class='collapsible-body'>" +
"                            <p><a href='#Exames1' class='waves-effect sub-menu-mobile'><i class='material-icons left'>cached</i>  Exames1</a></p>" +
"                            <p><a href='#Exames2' class='waves-effect sub-menu-mobile'><i class='material-icons left'>dashboard</i>  Exames2</a></p>" +
"                            <p><a href='#Exames3' class='waves-effect sub-menu-mobile'><i class='material-icons left'>dns</i>  Exames3</a></p>" +
"                        </div>" +
"                    </li>" +
"                    <li>" +
"                        <div class='collapsible-header waves-effect'><i class='material-icons'>add</i>Sobre</div>" +
"                        <div class='collapsible-body'>" +
"                            <p><a href='#Sobre1' class='waves-effect sub-menu-mobile'><i class='material-icons left'>cached</i>  Sobre1</a></p>" +
"                            <p><a href='#Sobre2' class='waves-effect sub-menu-mobile'><i class='material-icons left'>dashboard</i>  Sobre2</a></p>" +
"                            <p><a href='#Sobre3' class='waves-effect sub-menu-mobile'><i class='material-icons left'>dns</i>  Sobre3</a></p>" +
"                        </div>" +
"                    </li>" +
"                </ul>" +
"            </li>" +
"            <li><a href='#Contatos' class='waves-effect'><i class='material-icons'>mail</i>Contatos</a></li>" +
"        </ul>");
    }
    
    public static void PageRodape(PrintWriter out){
        out.println("<script type='text/javascript'>" +
"            $(document).ready(function () {" +
"                $('.collapsible').collapsible();" +
"            });" +
"            $(document).ready(function () {" +
"                $('.parallax').parallax();" +
"            });" +
"            $(document).ready(function () {" +
"                $('.carousel').carousel();" +
"            });" +
"            $(document).ready(function () {" +
"                $('.sidenav').sidenav();" +
"            });" +
"        </script>" +
"    </body>" +
"</html>");
    } 
}
