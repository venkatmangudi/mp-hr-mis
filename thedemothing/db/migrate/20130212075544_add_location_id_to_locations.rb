class AddLocationIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :locationID, :string
  end
end
