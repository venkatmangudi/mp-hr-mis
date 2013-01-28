class Location < ActiveRecord::Base
  attr_accessible :state_id
  has_many :states
end
