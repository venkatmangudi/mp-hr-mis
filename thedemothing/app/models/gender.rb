class Gender < ActiveRecord::Base
  attr_accessible :gender_name
  validates_uniqueness_of(:gender_name)

  belongs_to:employees
end
