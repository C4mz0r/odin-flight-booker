class Passenger < ActiveRecord::Base
  #belongs_to :bookings
  has_many :passenger_bookings
  has_many :bookings, through: :passenger_bookings
  has_many :flights, through: :bookings
end
