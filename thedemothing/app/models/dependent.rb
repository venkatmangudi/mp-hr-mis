class Dependent < ActiveRecord::Base
  attr_accessible :Birthdate, :Dependent_name, :employee_id, :relation_id, :status_id, :relationship_id
  belongs_to:employee
  belongs_to:relation
  belongs_to:status
  belongs_to:relationship
  validates_uniqueness_of(:Dependent_name)
end
