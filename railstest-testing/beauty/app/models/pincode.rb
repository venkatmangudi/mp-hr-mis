class Pincode < ActiveRecord::Base
  attr_accessible :pincode
  belongs_to :location
end
