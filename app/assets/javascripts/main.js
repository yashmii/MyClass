$(document).ready(function(){
    if ($('.selectize')){
        $('.selectize').selectize({
            sortField: 'text'
        });
    }

    $('#calendar').fullCalendar({
        // put your options and callbacks here
        lang: 'ru',
        minTime: "08:00:00",
        maxTime: "21:00:00",
        defaultView: 'agendaWeek',
        firstDay: 1,
        allDaySlot: false,
        height: 500,
        slotMinutes: 30,
        events: app.vars.events,
        header: {
            center: 'month,basicWeek,basicDay,agendaWeek,agendaDay,timelineDay,agendaFourDay'
        }
    });
});
$(document).ready(function() {
    /* Activating Best In Place */
    jQuery(".best_in_place").best_in_place();
});



