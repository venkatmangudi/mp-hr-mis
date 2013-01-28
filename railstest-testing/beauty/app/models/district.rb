class District < ActiveRecord::Base
  attr_accessible :district_name
  belongs_to :location
end
