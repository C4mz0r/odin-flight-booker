class FlightsController < ApplicationController
  
  def index
    @flights = Flight.all
    #@flight_options =
    @fromAirports = Airport.all.map {|a| [a.name, a.id]}
    @toAirports = Airport.all.map {|a| [a.name, a.id]}
  end
  
end
