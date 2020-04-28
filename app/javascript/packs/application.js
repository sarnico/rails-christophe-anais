import "bootstrap";

import '@fullcalendar/core/main.css';
import '@fullcalendar/timegrid/main.css';
import '@fullcalendar/list/main.css';

import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
import timeGridPlugin from '@fullcalendar/timegrid';
import listPlugin from '@fullcalendar/list';

const calendar = () => {



document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');
  console.log("hello")
  var calendar = new Calendar(calendarEl, {
    plugins: [ interactionPlugin, timeGridPlugin, listPlugin ],
    defaultView: 'timeGridDay',
    contentHeight: 600,
    selectable: true,
    selectOverlap: false,
    minTime: "013:00:00",
    maxTime: "19:30:00",
    slotDuration: '00:30:00',
    slotLabelInterval: 30,
  });

  calendar.render();
});
};

calendar()
