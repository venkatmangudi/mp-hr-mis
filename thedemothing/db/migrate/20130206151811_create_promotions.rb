class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.integer :employee_id
      t.string :current_payscale
      t.integer :designation_id
      t.string :new_payscale
      t.integer :designation_id
      t.integer :order_no

      t.timestamps
    end
  end
end
