class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight])
    @num_passengers = params[:passengers].to_i
    
    
    
#    @passengers = []
##    @num_passengers.times do
 #     @passengers << Passenger.new
  #  end
   
   @num_passengers.times do
     @flight.passengers.build
   end
    
    
  end
  
  def create
    
    byebug
  end
  
end
