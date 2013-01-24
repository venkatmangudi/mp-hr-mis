class Location < ActiveRecord::Base
  attr_accessible :city_id, :country_id, :district_id, :loc_master_id, :pincode_id, :state_id, :taluk_id
  validates :pincode_id,  :presence => true
  validates :country_id,  :presence => true
  validates :city_id,  :presence => true,
  					   :length => { :minimum => 5 }
end
