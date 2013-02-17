class EmploymentType < ActiveRecord::Base
  attr_accessible :employment_type
  belongs_to:employee
end
