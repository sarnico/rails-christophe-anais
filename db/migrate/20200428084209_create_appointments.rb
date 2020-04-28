class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
