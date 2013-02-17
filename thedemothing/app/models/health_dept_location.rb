class HealthDeptLocation < ActiveRecord::Base
  attr_accessible :admin_location, :block_id, :district_code, :district_id, :division_id, :istribal, :location_id, :name, :no_of_beds, :hospital_id, :institution_master_id

  belongs_to:state 
  belongs_to:district
  belongs_to:division
  belongs_to:block
  belongs_to:location
  belongs_to:institution_master
  belongs_to:hospital

end
