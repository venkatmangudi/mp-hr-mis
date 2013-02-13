class Qualification < ActiveRecord::Base
  attr_accessible :Remarks, :employee_id, :qualification_name_id, :qualification_type_id, :specialisation_id, :university_id, :year

  belongs_to:employee
  belongs_to:qualification_type
  belongs_to:qualification_name
  belongs_to:specialisation
  belongs_to:university
end
