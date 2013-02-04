class Religion < ActiveRecord::Base
  attr_accessible :religion_name
  validates_uniqueness_of(:religion_name)

  has_many:employees
end
