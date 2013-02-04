class Caste < ActiveRecord::Base
  attr_accessible :caste_name
  validates_uniqueness_of(:caste_name)

  has_many:employees
end
