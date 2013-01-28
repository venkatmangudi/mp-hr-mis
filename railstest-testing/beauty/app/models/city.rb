class City < ActiveRecord::Base
  attr_accessible :city_name
  belongs_to :location
end

