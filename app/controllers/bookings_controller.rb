class BookingsController < ApplicationController
  def new
    @flight = params[:flight]
    
    # Naming is based on the arguments in the hidden field call.
    # This feels wrong, need to find out if there is a better way to do it.
    @passengers = params[:passengers][:passengers]
    
  end
end
