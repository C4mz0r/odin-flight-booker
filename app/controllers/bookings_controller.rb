class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight])
    @num_passengers = params[:passengers].to_i
    
    @booking = @flight.bookings.new
    
#    @passengers = []
##    @num_passengers.times do
 #     @passengers << Passenger.new
  #  end
   
   @num_passengers.times { @booking.passengers.build }
    #byebug
    
  end
  
  def create
    byebug
    
    @booking = Booking.new(booking_params)
    @booking.save
    #render 'new'
    
  end
  
    private
    
    def booking_params
      byebug
      params.require(:booking).permit(passengers_attributes: [:id, :name, :email])
    end
  
end
