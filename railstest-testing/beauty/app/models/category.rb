class Category < ActiveRecord::Base
  attr_accessible :category_name
  validates_uniqueness_of(:category_name)

  has_many:employees
end
