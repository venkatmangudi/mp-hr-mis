class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :state_id 
  belongs_to:state

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
