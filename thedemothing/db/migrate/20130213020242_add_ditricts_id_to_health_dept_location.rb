class AddDitrictsIdToHealthDeptLocation < ActiveRecord::Migration
  def change
    add_column :health_dept_locations, :ditricts_id, :integer
  end
end
