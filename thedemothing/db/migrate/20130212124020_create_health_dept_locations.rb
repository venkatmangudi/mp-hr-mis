class CreateHealthDeptLocations < ActiveRecord::Migration
  def change
    create_table :health_dept_locations do |t|
      t.integer :location_id
      t.integer :division_id
      t.integer :district_id
      t.integer :block_id
      t.string :name
      t.boolean :admin_location
      t.string :district_code
      t.boolean :istribal
      t.integer :no_of_beds

      t.timestamps
    end
  end
end
