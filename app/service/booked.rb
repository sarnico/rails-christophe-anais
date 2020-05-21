
class Booked
  def self.date(current_user)

    if current_user.email != "anais_christophe@hotmail.com"
      Appointment.all.map {|e|
        {start:e.date.strftime("%FT%T%:z"), end:(e.date + 30.minutes).strftime("%FT%T%:z"), color: '#94969b',title:"réservé"}
      }

    elsif current_user.email == "anais_christophe@hotmail.com"
      Appointment.all.map {|e|
        patient = User.find(id = e.user_id)
        {start:e.date.strftime("%FT%T%:z"), end:(e.date + 30.minutes).strftime("%FT%T%:z"), color: '#94969b',title:"#{patient.lastname} #{patient.firstname} #{patient.phonenumber}"}
      }
    end
  end
end
