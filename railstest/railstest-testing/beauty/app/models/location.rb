class Location < ActiveRecord::Base
  attr_accessible :city_id, :country_id, :district_id, :loc_master_id, :pincode_id, :state_id, :taluk_id
end
