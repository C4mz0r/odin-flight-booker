class FlightsController < ApplicationController
  
  def index
    @flights = Flight.all    
    @fromAirports = Airport.getSourceAirports
    @toAirports = Airport.getDestinationAirports 
    @flightDates = Flight.formatFlightDates(Flight.getFlightDates)
     
    @results = Flight.searchForFlights(params[:from_code], params[:to_code], params[:date])
    
      
  end
  
end
