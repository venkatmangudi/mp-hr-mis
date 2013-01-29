class State < ActiveRecord::Base
  attr_accessible :state_name
  belongs_to :location
  validates_uniqueness_of(:state_name, :message => "There is already a State with that name")
end
