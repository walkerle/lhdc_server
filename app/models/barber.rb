class Barber < ActiveRecord::Base
  has_many :appointments
  has_many :clients, through: :appointments
  has_many :hairstyles, through: :appointments
  
end