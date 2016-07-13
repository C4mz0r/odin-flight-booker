class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :flights, :desintation_id, :destination_id
  end
end
