class State < ActiveRecord::Base
  attr_accessible :state_name
  has_many:health_dept_locations
  validates_uniqueness_of(:state_name)
  validates_presence_of(:state_name)

  has_many:divisions
  has_many:addresses
end
