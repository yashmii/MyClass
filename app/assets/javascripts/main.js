$(document).ready(function(){
    if ($('.selectize')){
        $('.selectize').selectize({
            sortField: 'text'
        });
    }

    $('#calendar').fullCalendar({
    // put your options and callbacks here
        lang: 'ru'

    });
});

$(document).ready(function() {
    /* Activating Best In Place */
    jQuery(".best_in_place").best_in_place();
});