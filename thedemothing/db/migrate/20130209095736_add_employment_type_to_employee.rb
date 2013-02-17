class AddEmploymentTypeToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :employment_type, :string
  end
end
