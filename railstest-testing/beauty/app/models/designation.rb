class Designation < ActiveRecord::Base
  attr_accessible :Designation_English, :Designation_Hindi, :class_no
  has_many:postings
  has_many:promotions
end
