class AddEmployeeNoToDependents < ActiveRecord::Migration
  def change
    add_column :dependents, :employee_no, :string
  end
end
