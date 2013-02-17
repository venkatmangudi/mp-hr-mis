class Status < ActiveRecord::Base
  attr_accessible :Status_name

  validates_uniqueness_of(:Status_name)
  validates_presence_of(:Status_name)

  has_many:dependents
end
