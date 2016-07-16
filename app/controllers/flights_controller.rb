class FlightsController < ApplicationController
  
  def index
    @flights = Flight.all    
    @fromAirports = Airport.getSourceAirports
    @toAirports = Airport.getDestinationAirports 
    @flightDates = Flight.formatFlightDates(Flight.getFlightDates)
    
    # Used in the view    
    @passengers = params[:num_tickets]
     
    # Used in results below, but also in the view to keep these
    # options selected after page refresh
    @selectedFromAirport = params[:from_code]
    @selectedToAirport = params[:to_code]
    @selectedFlightDate = params[:date]
        
    @results = Flight.searchForFlights(@selectedFromAirport, @selectedToAirport, @selectedFlightDate)
    
      
  end
  
end
