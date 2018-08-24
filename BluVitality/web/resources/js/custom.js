/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
document.addEventListener('DOMContentLoaded', function () {
    var elems = document.querySelectorAll('.parallax');
});

// Or with jQuery

$(document).ready(function () {
    
    $('.slider').slider();
    
    //Menu retratil
    $('.collapsible').collapsible();

    //modal
    $('.modal').modal();

    //Efeito parallax
    $('.parallax').parallax();

    //Mobile Nav Menu
    $('.sidenav').sidenav();

    $('.fixed-action-btn').floatingActionButton({
        direction: 'left',
        toolbarEnabled: true
    });

    $('.datepicker').datepicker({
        format: 'dd/mm/yyyy',
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
                    close: 'Fechar',
            //The format to show on the `input` element
        }

    });

    $('.pushpin').pushpin();

    $('.scrollspy').scrollSpy();

    $('.dropdown-trigger').dropdown({
        hover: true,
        constrainWidth: false,
        coverTrigger: false
    });

    var tab = $('.tabs').tabs({
        swipeable: true,
        onShow: true
    });
    
    $("#botao-1").on("click", function () {
        changeTab('Sobre1');
    });

    $("#botao-2").on("click", function () {
        changeTab('Sobre2');
    });
    
    $("#botao-3").on("click", function () {
        changeTab('Sobre3');
    });

    function changeTab(id) {
        var instance = M.Tabs.getInstance($('.tabs'));
        instance.select(id);
        instance.updateTabIndicator();
    }
});



$('.pushpin-demo-nav').each(function () {
    var $this = $(this);
    var $target = $('#' + $(this).attr('data-target'));
    $this.pushpin({
        top: $target.offset().top,
        bottom: $target.offset().top + $target.outerHeight() - $this.height()
    });
});