# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Airport.create(name: 'YEG')
Airport.create(name: 'LAX')
Airport.create(name: 'MSP')

Flight.create(name: 'WestJet 1234', source_id: 1, destination_id: 2, date: DateTime.now, duration: 1.5)
Flight.create(name: 'Air Canada 234', source_id: 1, destination_id: 2, date: DateTime.now, duration: 1.5)
Flight.create(name: 'WestJet 1234', source_id: 1, destination_id: 2, date: DateTime.now+1, duration: 1.5)
Flight.create(name: 'Air Canada 234', source_id: 1, destination_id: 2, date: DateTime.now+1, duration: 1.5)
Flight.create(name: 'Delta 321', source_id: 1, destination_id: 3, date: DateTime.now, duration: 2.5)
Flight.create(name: 'Alaska 445', source_id: 2, destination_id: 3, date: DateTime.now, duration: 3.25)
Flight.create(name: 'American Airlines 987', source_id: 2, destination_id: 1, date: DateTime.now, duration: 1.75)
Flight.create(name: 'Delta 227', source_id: 3, destination_id: 1, date: DateTime.now, duration: 2.75)
Flight.create(name: 'Southwest 484', source_id: 3, destination_id: 2, date: DateTime.now, duration: 3.5)

Passenger.create(name: "Sally", email: "sally@example.com")
Passenger.create(name: "Fred", email: "Fred@example.com")

Booking.create(flight_id: 1, passenger_id: 1)
Booking.create(flight_id: 1, passenger_id: 2)

