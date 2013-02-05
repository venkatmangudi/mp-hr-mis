class Dependent < ActiveRecord::Base
  attr_accessible :Birthdate, :Dependent_name, :employee_id, :relation_id, :status_id
  belongs_to:employee
  belongs_to:relation
  belongs_to:status

  validates_uniqueness_of(:Dependent_name)
end
