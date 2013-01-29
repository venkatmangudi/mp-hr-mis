class Pincode < ActiveRecord::Base
  attr_accessible :pincode
  belongs_to :location
  validates_uniqueness_of(:pincode, :message => "There is already a Pincode with that name")
end
