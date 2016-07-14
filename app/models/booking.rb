class Booking < ActiveRecord::Base
  belongs_to :Flight
  belongs_to :Passenger
end
