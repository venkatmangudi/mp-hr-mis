class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|
      t.string :Designation_Hindi
      t.string :Designation_English
      t.string :class_no

      t.timestamps
    end
  end
end
