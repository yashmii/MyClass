$(document).ready(function(){
    if ($('.selectize')){
        $('.selectize').selectize({
            sortField: 'text'
        });
    }

    $('#calendar').fullCalendar({
    // put your options and callbacks here
        lang: 'pl'
    });
});