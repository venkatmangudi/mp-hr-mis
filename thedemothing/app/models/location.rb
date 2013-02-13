class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :state_id, :block_id 
  belongs_to:state
  belongs_to:block
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  has_many:blocks
  belongs_to:block
  has_many:health_dept_locations
  has_many:additional_charges
end
