class AddHospitalIdToHealthDeptLocation < ActiveRecord::Migration
  def change
    add_column :health_dept_locations, :hospital_id, :integer
  end
end
