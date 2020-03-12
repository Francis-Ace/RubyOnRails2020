class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :coach, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.datetime :appointment_date

      t.timestamps
    end
  end
end
