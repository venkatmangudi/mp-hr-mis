class State < ActiveRecord::Base
  attr_accessible :state_name
  has_many:locations
  validates_uniqueness_of(:state_name)
  validates_presence_of(:state_name)
end
