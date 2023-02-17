class Client < ActiveRecord::Base
  has_many :appointments
  has_many :barbers, through: :appointments
  has_many :hairstyles, through: :appointments

end