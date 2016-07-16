class Booking < ActiveRecord::Base
  belongs_to :flight
  #belongs_to :passenger  
  #has_many :tickets
  has_many :passenger_bookings
  has_many :passengers, through: :passenger_bookings
  accepts_nested_attributes_for :passengers
end
