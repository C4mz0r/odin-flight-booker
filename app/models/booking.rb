class Booking < ActiveRecord::Base
  belongs_to :flight
  belongs_to :passenger  
  has_many :tickets
  has_many :passengers, through: :tickets
  accepts_nested_attributes_for :passengers
end
