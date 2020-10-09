const createAppointment = () =>{

  const doubleform=document.querySelector(".doubleform_validation")


  doubleform.addEventListener('click', event => {



    const userform=document.querySelector("#new_user")
    console.log(userform)

    const appointmentform = document.querySelector("#new_appointment")
    const appointmentDate = appointmentform[2].value

    fetch('/create_user', {
      method: "POST",
      body: JSON.stringify({user: {
        email: userform[2].value,
        lastname: userform[3].value,
        firstname: userform[4].value,
        phonenumber: userform[5].value
      }}),
      headers: {
        "Accept": 'application/json',
        "Content-Type": 'application/json; charset=UTF-8',
        "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').content
      }
    })
    .then(res => {
      console.log(res)
      return res.json()
    })
    .then(user => {
      console.log(user.id)
      fetch('/appointments', {
        method: "POST",
        body: JSON.stringify({appointment: {
          user_id: user.id,
          date: appointmentform[2].value
        }}),
        headers: {
          "Accept": 'application/json',
          "Content-Type": 'application/json; charset=UTF-8',
          "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').content
        }
      })
      .then(res => {
        console.log(res)
        return res.json()
      })
      .then(appointment => {

        window.location.href = `/appointments/${appointment.id}`
      })
    })
    event.preventDefault()
  })
}


  export { createAppointment }
