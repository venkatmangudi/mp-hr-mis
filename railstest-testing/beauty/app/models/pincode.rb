class Pincode < ActiveRecord::Base
  attr_accessible :pincode
  belongs_to :location
  
  validates_presence_of(:pincode)
  validates_numericality_of(:pincode, :only_integer => true ,:message => "Has to be Numerical")
  validates_uniqueness_of(:pincode, :message => "There is already a Pincode with that name")
end
