class InstitutionMaster < ActiveRecord::Base
  attr_accessible :Beds, :Institution_Name, :Institution_type_id, :Special_Cadre_id, :district_id, :pincode_id
  
  belongs_to:pincode
  belongs_to:Institution_type
  belongs_to:Special_Cadre
  belongs_to:district
  has_many:health_dept_locations
  has_many:postings
  
  validates_presence_of(:pincode_id)
  validates_presence_of(:Institution_Name)
  validates_uniqueness_of(:Institution_Name)
  validates_presence_of(:Institution_type_id)
  validates_presence_of(:district_id)
  validates_presence_of(:Beds)
end
