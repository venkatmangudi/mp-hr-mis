class AddEmpTreasuryIdToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :emp_treasury_id, :string
  end
end
