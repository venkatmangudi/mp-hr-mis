class Location < ActiveRecord::Base
  attr_accessible :city_id, :country_id, :district_id, :pincode_id, :state_id, :taluk_id
  has_many :cities
  has_many :districts
  has_many :countries
  has_many :pincodes
  has_many :states
  has_many :taluks
end
