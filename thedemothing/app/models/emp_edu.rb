class EmpEdu < ActiveRecord::Base
  attr_accessible :emp_education, :emp_id, :emp_remarks, :emp_specialisation

  validates :emp_education,  :presence => true
  validates :emp_remarks,  :presence => true
  validates :emp_specialisation,  :presence => true,
  					   :length => { :minimum => 5 }
end
