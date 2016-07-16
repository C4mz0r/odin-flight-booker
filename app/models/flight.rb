class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => 'Airport', :foreign_key => 'source_id'
  belongs_to :to_airport, :class_name => 'Airport', :foreign_key => 'destination_id'
  
  has_many :bookings
  has_many :passengers, through: :bookings
      
  def self.getFlightDates
    Flight.all.pluck(:date)
  end
  
  def Flight.searchForFlights(from_code, to_code, date)
    return [] if (date.nil?)    
    date = DateTime.strptime(date, "%B %d, %Y")
    Flight.all.select do |flight|
      flight.from_airport.name == from_code &&
      flight.to_airport.name == to_code &&
      flight.date >= date.beginning_of_day &&
      flight.date <= date.end_of_day     
    end   
  end
  
  # Converts date strings into format like July 1, 2016  
  def Flight.formatFlightDates(dates)    
    dates.map! { |dateString| DateTime.parse(dateString.to_s).to_date.strftime("%B %d, %Y")}.uniq    
  end
  
  
     
end
