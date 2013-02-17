class Designation < ActiveRecord::Base
  attr_accessible :Designation_English, :Designation_Hindi, :class_no
  has_many:postings
  has_many:promotions
  has_many:sanctioned_posts
  has_many:additional_charges
end
