class City < ActiveRecord::Base
  attr_accessible :city_name
  belongs_to :location
  validates_uniqueness_of(:city_name, :message => "There is already a City with that name")
end

