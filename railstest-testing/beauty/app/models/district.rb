class District < ActiveRecord::Base
  attr_accessible :district_name

  has_many:institution_masters
  validates_uniqueness_of(:district_name)
  validates_presence_of(:district_name)
end
