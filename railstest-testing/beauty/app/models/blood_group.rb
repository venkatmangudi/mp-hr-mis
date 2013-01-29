class BloodGroup < ActiveRecord::Base
  attr_accessible :blood_group_type
  validates_uniqueness_of(:blood_group_type, :message => "There is already a Blood Group of that type")
end
