class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :Flight, index: true, foreign_key: true
      t.references :Passenger, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
