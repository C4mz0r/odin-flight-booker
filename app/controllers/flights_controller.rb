class FlightsController < ApplicationController
  
  def index
    @flights = Flight.all    
    @fromAirports = Airport.getSourceAirports
    @toAirports = Airport.getDestinationAirports 
    @flightDates = Flight.formatFlightDates(Flight.getFlightDates)   
  end
  
end
