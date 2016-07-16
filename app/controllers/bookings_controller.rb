class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight])
    @num_passengers = params[:passengers].to_i    
    @booking = @flight.bookings.build
    @num_passengers.times { @booking.passengers.build }       
  end
  
  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    end    
  end
  
  def show
    @booking = Booking.find(params[:id])
  end
  
    private
    
    def booking_params    
      params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
    end
  
end
