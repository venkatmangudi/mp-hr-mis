class CreateDependents < ActiveRecord::Migration
  def change
    create_table :dependents do |t|
      t.integer :employee_id
      t.string :Dependent_name
      t.integer :relation_id
      t.date :Birthdate
      t.integer :status_id

      t.timestamps
    end
  end
end
