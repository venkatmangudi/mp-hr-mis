class BloodGroup < ActiveRecord::Base
  attr_accessible :blood_group_type
  validates_uniqueness_of(:blood_group_type)
  has_many:employees
end
