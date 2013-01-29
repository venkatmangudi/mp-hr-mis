class Category < ActiveRecord::Base
  attr_accessible :category_name
  validates_uniqueness_of(:category_name, :message => "There is already a Category with that name")
end
