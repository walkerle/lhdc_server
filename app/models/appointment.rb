class Appointment < ActiveRecord::Base
  belongs_to :client
  belongs_to :barber
  belongs_to :hairstyle
  
end