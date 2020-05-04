// import '@fullcalendar/core/main.css';
// import '@fullcalendar/timegrid/main.css';
// import '@fullcalendar/list/main.css';


// import { Calendar } from '@fullcalendar/core';
// import interactionPlugin from '@fullcalendar/interaction';
// import timeGridPlugin from '@fullcalendar/timegrid';
// import momentPlugin from '@fullcalendar/moment';
// import moment from 'moment';
// import listPlugin from '@fullcalendar/list';


// const calendar = () => {

// document.addEventListener('DOMContentLoaded', function() {
//   var calendarEl = document.getElementById('calendar');

//   const user_id = calendarEl.dataset.user


//   var calendar = new Calendar(calendarEl, {
//     plugins: [ interactionPlugin, timeGridPlugin, momentPlugin, listPlugin ],
//     defaultDate: selecteddate,
//     defaultView: 'timeGridDay',
//      timeZone: 'Europe/breussels',
//     contentHeight: 600,
//     allDaySlot: false,
//     selectable: true,
//     selectOverlap: false,
//     minTime: "13:00:00",
//     maxTime: "19:30:00",
//     slotDuration: '00:30:00',
//     slotLabelInterval: 30,

//     select: function(info) {
//       console.log(info.start)

//       if (info.start > Date.now()) {
//         confirm(`Je confirme ma réservation le ${info.start}`);
//         calendar.addEvent({
//           title: user_id,
//           start: info.start,
//           end: info.end
//         });

//       const date = document.querySelector('#appointment_date')
//       const dateValue =JSON.parse(date.dataset.value || "[]")
//       date.value = JSON.stringify(info.start)

//       } else {
//         alert('Réservation impossible');
//       }
//     }


//   });

//   calendar.render();
// });
// };

// export { calendar }
