class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :taluk_id
      t.integer :district_id
      t.integer :city_id
      t.integer :state_id
      t.integer :pincode_id
      t.string :country_id

      t.timestamps
    end
  end
end
