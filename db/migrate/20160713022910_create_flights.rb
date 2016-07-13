class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :source_id
      t.integer :desintation_id
      t.datetime :date
      t.float :duration

      t.timestamps null: false
    end
  end
end
