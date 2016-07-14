class Passenger < ActiveRecord::Base
  has_many :bookings
end
