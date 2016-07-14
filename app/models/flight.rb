class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => 'Airport', :foreign_key => 'source_id'
  belongs_to :to_airport, :class_name => 'Airport', :foreign_key => 'destination_id'
    
  def self.getFlightDates
    Flight.all.pluck(:date)
  end
  
  def Flight.searchForFlights(from_code, to_code, date)
    return [] if (date.nil?)    
    date = DateTime.strptime(date, "%m/%d/%Y %H:%M:%S")
    Flight.all.select do |flight|
      flight.from_airport.name == from_code &&
      flight.to_airport.name == to_code &&
      flight.date >= date.beginning_of_day &&
      flight.date <= date.end_of_day     
    end   
  end
  
  def Flight.formatFlightDates(dates)
    dates.map! { |dt| dt.strftime("%m/%d/%Y %H:%M:%S") }.uniq  
  end
  
  
     
end
