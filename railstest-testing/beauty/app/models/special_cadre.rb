class SpecialCadre < ActiveRecord::Base
  attr_accessible :Special_Cadre_Type
  validates_uniqueness_of(:Special_Cadre_Type)
  validates_presence_of(:Special_Cadre_Type)
end
