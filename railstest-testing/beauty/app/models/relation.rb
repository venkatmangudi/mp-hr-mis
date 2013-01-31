class Relation < ActiveRecord::Base
  attr_accessible :Relation_name

  validates_uniqueness_of(:Relation_name)
  validates_presence_of(:Relation_name)

  has_many:dependents
end
