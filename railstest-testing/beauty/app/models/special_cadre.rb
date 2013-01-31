class SpecialCadre < ActiveRecord::Base
  attr_accessible :Special_Cadre_Type

  has_many:institution_masters
  validates_uniqueness_of(:Special_Cadre_Type)
  validates_presence_of(:Special_Cadre_Type)
end
