class Airport < ActiveRecord::Base  
  has_many :arriving_flights, :class_name => 'Flight', :foreign_key => 'destination_id'
  has_many :departing_flights, :class_name => 'Flight', :foreign_key => 'source_id'
  
  def self.getSourceAirports
    Airport.all.map {|a| [a.name, a.name]}
  end
  
  def self.getDestinationAirports
    Airport.all.map {|a| [a.name, a.name]}
  end
  
end
