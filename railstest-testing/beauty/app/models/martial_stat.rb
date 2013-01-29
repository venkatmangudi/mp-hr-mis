class MartialStat < ActiveRecord::Base
  attr_accessible :martial_status_type
  validates_uniqueness_of(:martial_status_type, :message => "There is already a Martial Status with that name")
end
