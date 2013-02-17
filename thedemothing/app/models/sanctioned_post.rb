class SanctionedPost < ActiveRecord::Base
  attr_accessible :designationID, :health_dept_locationID, :sac_post, :designation_id
  belongs_to:designation
  
end
