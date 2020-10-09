class CreateAppointmentDates < ActiveRecord::Migration[5.2]
  def change
    create_table :appointment_dates do |t|
      t.date :appointmentdate

      t.timestamps
    end
  end
end
