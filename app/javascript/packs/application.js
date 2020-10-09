import "bootstrap";

import '@fullcalendar/core/main.css';
import '@fullcalendar/timegrid/main.css';
import '@fullcalendar/list/main.css';



import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
import timeGridPlugin from '@fullcalendar/timegrid';
import momentPlugin from '@fullcalendar/moment';
import moment from 'moment';
import listPlugin from '@fullcalendar/list';

import { createAppointment } from '../createAppointmentForUser';


if (document.querySelector("#create-appointment")) {
  createAppointment ()
}



const calendar = (selecteddate) => {

// document.addEventListener('DOMContentLoaded', function() {

  document.getElementById('calendar').innerHTML = "";
  var calendarEl = document.getElementById('calendar');

  const user_id = calendarEl.dataset.user

  const appointmentsbooked = JSON.parse(calendarEl.dataset.appointmentsbooked)

  var calendar = new Calendar(calendarEl, {
    plugins: [ interactionPlugin, timeGridPlugin, momentPlugin, listPlugin ],
    defaultDate: selecteddate,
    defaultView: 'timeGridDay',
    timeZone: 'Europe/Brussels',
    contentHeight: 600,
    allDaySlot: false,
    selectable: true,
    selectOverlap: false,
    minTime: "13:00:00",
    maxTime: "19:30:00",
    slotDuration: '00:30:00',
    slotLabelInterval: 30,
    displayEventTime: false,
    events:appointmentsbooked,
    header: {
        left: '',
        center: 'title',
        right: ''
      },





    select: function(info) {

      if (info.start > Date.now() && info.end-info.start==1800000) {

        // confirm(`Je confirme ma réservation le ${info.start}`);
        // calendar.addEvent({
        //   title: user_id,
        //   start: info.start,
        //   end: info.end
        // });

      const date = document.querySelector('#appointment_date')
      const dateValue =JSON.parse(date.dataset.value || "[]")
      date.value = JSON.stringify(info.start)


      formCalendar.classList.remove("inactif")

      } else if (info.start > Date.now() && info.end-info.start !=1800000) {
         alert("Veuillez ne sélectionner qu'une seule plage horaire svp.");
      }else {
        alert('Réservation impossible pour cette plage horaire');
      }
    }


  });

  calendar.render();
// });
};


// import { calendar } from "../full_calendar";


const formCalendar =document.querySelector('.formCalendar')
const date = document.querySelectorAll(".avalaibledates li")

const selecteddate = date.forEach(elmt =>
  elmt.addEventListener('click', (event)=>{
    const selecteddate = elmt.innerText.split("-").reverse().join("-");
    formCalendar.classList.add("inactif")
    calendar(selecteddate)
  }
  )
)
