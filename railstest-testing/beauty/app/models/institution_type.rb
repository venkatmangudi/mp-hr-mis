class InstitutionType < ActiveRecord::Base
  attr_accessible :Institution_type
  validates_uniqueness_of(:Institution_type)
  validates_presence_of(:Institution_type)
end
