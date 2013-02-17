class AddEmployeeNoToQualifications < ActiveRecord::Migration
  def change
    add_column :qualifications, :employee_no, :string
  end
end
