/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// Or with jQuery

var jQuery_2_1_1 = $.noConflict(true);

jQuery_2_1_1(document).ready(function () {

    jQuery_2_1_1('.slider').slider();

    //Menu retratil
    jQuery_2_1_1('.collapsible').collapsible();

    //modal
    jQuery_2_1_1('.modal').modal();

    //Efeito parallax
    jQuery_2_1_1('.parallax').parallax();

    jQuery_2_1_1('select').formSelect({
        direction: 'left'

    });

    //Mobile Nav Menu
    jQuery_2_1_1('.sidenav').sidenav({
        preventScrolling: true
    });

    jQuery_2_1_1('.fixed-action-btn').floatingActionButton({
        direction: 'left',
        toolbarEnabled: true
    });

    jQuery_2_1_1('.datepicker').datepicker({
        format: 'dd-mm-yyyy',
        i18n: {
            selectMonths: true, //Creates a dropdown to control month
            selectYears: 15, //Creates a dropdown of 15 years to control year
            //The title label to use for the month nav buttons
            labelMonthNext: 'Proximo Mês',
            labelMonthPrev: 'Mês Anterior',
            //The title label to use for the dropdown selectors
            labelMonthSelect: 'Selecionar Mês',
            labelYearSelect: 'Selecionar Ano',
            cancel: 'Cancelar',
            clear: 'Limpar',
            done: 'Ok',
            previousMonth: '‹',
            nextMonth: '›',
            months: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
            monthsShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Maio', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
            weekdays: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
            weekdaysShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'],
            //Materialize modified
            weekdaysAbbrev: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S'],
            today: 'Hoje',
            clear: 'Limpar',
            close: 'Fechar'
                    //The format to show on the `input` element
        }

    });

    jQuery_2_1_1('.scrollspy').scrollSpy();

    jQuery_2_1_1('.dropdown-trigger').dropdown({
        hover: true,
        constrainWidth: false,
        coverTrigger: false
    });

    jQuery_2_1_1('.tabs').tabs({
        swipeable: true,
        onShow: true
    });

    jQuery_2_1_1(".botao-servicos").on("click", function () {
        changeTab("Servicos" + jQuery_2_1_1(this).data("id"));
    });
    jQuery_2_1_1(".botao-exames").on("click", function () {
        changeTab("Exames" + jQuery_2_1_1(this).data("id"));
    });

    jQuery_2_1_1(".botao-contatos").on("click", function () {
        changeTab("Contatos" + jQuery_2_1_1(this).data("id"));
    });

    jQuery_2_1_1(".botao-sobre").on("click", function () {
        changeTab("Sobre" + jQuery_2_1_1(this).data("id"));
    });

    function changeTab(id) {
        var instance = M.Tabs.getInstance(jQuery_2_1_1('.tabs'));
        instance.select(id);
        instance.updateTabIndicator();
    }

    jQuery_2_1_1(".agendarE").hide();
    jQuery_2_1_1(".agendarC").hide();

    jQuery_2_1_1(".exameRadio").on("click", function () {
        jQuery_2_1_1(".agendarE").show();
        jQuery_2_1_1(".agendarC").hide();
    });
    jQuery_2_1_1(".consultaRadio").on("click", function () {
        jQuery_2_1_1(".agendarE").show();
        jQuery_2_1_1(".agendarC").hide();
    });
    
    jQuery_2_1_1('.g-signin2').click(function() {
    // signInCallback defined in step 6.
    auth2.grantOfflineAccess().then(signInCallback);
  });
    
});

function onSignIn(googleUser) {
    var profile = googleUser.getBasicProfile();
    console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
    console.log('Name: ' + profile.getName());
    console.log('Image URL: ' + profile.getImageUrl());
    console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
    var userId = profile.getId();
    var userName = profile.getName();
    var userEmail = profile.getEmail();
    var userPicture = profile.getImageUrl();
    var userPicture = profile.getImageUrl();
    document.getElementById('user-photo').src = userPicture;
    document.getElementById('user-name').innerText = userName;
    document.getElementById('user-email').innerText = userEmail;

    // Recebendo o TOKEN que você usará nas demais requisições à API:
    var LoR = response.getAuthResponse().id_token;
    console.log("~ le Tolkien: " + LoR);
    response.getAuthResponse().sendRedirect(LoRName);
    
};

function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
    });
}

