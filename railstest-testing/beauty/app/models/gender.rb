class Gender < ActiveRecord::Base
  attr_accessible :gender_name
  validates_uniqueness_of(:gender_name, :message => "There is already a Gender with that name")
end
