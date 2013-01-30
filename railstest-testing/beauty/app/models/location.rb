class Location < ActiveRecord::Base
  attr_accessible :state_id
  belongs_to:state
end
