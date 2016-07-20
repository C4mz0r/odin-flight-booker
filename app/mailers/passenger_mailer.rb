class PassengerMailer < ApplicationMailer
  default from: 'no-reply@example.com'
  
  def confirmation_email(passenger, flight, booking_id)
    @passenger = passenger  
    @flight = flight
    @booking_url = booking_url(booking_id)
    mail(to: @passenger.email, subject: 'Flight is booked')
  end
end
