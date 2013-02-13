class CreateAdditionalCharges < ActiveRecord::Migration
  def change
    create_table :additional_charges do |t|
      t.integer :add_chargeID
      t.integer :employee_id
      t.integer :location_id
      t.integer :designation_id
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end
