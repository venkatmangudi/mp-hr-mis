class CreateLeaveemps < ActiveRecord::Migration
  def change
    create_table :leaveemps do |t|
      t.integer :employee_id
      t.date :date_from
      t.date :date_to
      t.integer :days
      t.integer :leave_type_id
      t.text :leave_reason

      t.timestamps
    end
  end
end
