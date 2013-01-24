class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :loc_master_id
      t.string :city_id
      t.string :taluk_id
      t.string :district_id
      t.string :state_id
      t.string :country_id
      t.string :pincode_id

      t.timestamps
    end
  end
end
