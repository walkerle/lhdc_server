class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.integer :barber_id
      t.integer :hairstyle_id
      t.datetime :datetime

    end
    
  end
end
