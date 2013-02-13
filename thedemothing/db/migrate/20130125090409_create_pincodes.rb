class CreatePincodes < ActiveRecord::Migration
  def change
    create_table :pincodes do |t|
      t.integer :pincode

      t.timestamps
    end
  end
end
