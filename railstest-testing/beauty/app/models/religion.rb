class Religion < ActiveRecord::Base
  attr_accessible :religion_name
  validates_uniqueness_of(:religion_name, :message => "There is already a Religion with that name")
end
