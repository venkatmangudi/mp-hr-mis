class District < ActiveRecord::Base
  attr_accessible :district_name, :division_id

  has_many:postings
  has_many:institution_masters
  has_many:health_dept_locations
  has_many:blocks  
  belongs_to:division
  has_many:divisions
  validates_uniqueness_of(:district_name)
  validates_presence_of(:district_name)
end
