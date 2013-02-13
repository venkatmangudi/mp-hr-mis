class AddInstitutionMasterIdToHealthDeptLocation < ActiveRecord::Migration
  def change
    add_column :health_dept_locations, :institution_master_id, :integer
  end
end
