class Passenger < ActiveRecord::Base  
  has_many :passenger_bookings
  has_many :bookings, through: :passenger_bookings
  has_many :flights, through: :bookings
  
  validates :email, presence: true
  validates :name, presence: true 
end
