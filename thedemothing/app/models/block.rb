class Block < ActiveRecord::Base
  attr_accessible :balock_name, :district_id

  has_many:health_dept_locations
  belongs_to:district
  belongs_to:location
  has_many:locations 
end
