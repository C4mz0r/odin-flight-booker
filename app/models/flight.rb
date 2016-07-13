class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => 'Airport', :foreign_key => 'source_id'
  belongs_to :to_airport, :class_name => 'Airport', :foreign_key => 'destination_id'
    
  def self.getFlightDates
    Flight.all.pluck(:date)
  end
  
  def Flight.formatFlightDates(dates)
    dates.map! { |dt| dt.strftime("%m/%d/%Y %H:%M:%S") }   
  end
     
end
