class Division < ActiveRecord::Base
  attr_accessible :division_name, :state_id

  has_many:health_dept_locations
  belongs_to:state
  has_many:districts
  belongs_to:district 
end
