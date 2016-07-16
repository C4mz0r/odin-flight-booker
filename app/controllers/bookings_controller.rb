class BookingsController < ApplicationController
  def new    
    if (params[:flight].nil?) 
      redirect_to root_path and return
    end     
    @flight = Flight.find(params[:flight])
    @num_passengers = params[:passengers].to_i    
    @booking = @flight.bookings.build
    @num_passengers.times { @booking.passengers.build }       
  end
  
  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else      
      @flight = Flight.find(params[:booking][:flight_id])
      render 'new'          
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
