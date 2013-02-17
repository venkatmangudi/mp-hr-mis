class AddInstitutionTypeIdToHealthDeptLocation < ActiveRecord::Migration
  def change
    add_column :health_dept_locations, :institution_type_id, :integer
  end
end
