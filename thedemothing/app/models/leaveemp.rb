class Leaveemp < ActiveRecord::Base
  attr_accessible :date_from, :date_to, :days, :employee_id, :leave_reason, :leave_type_id
  belongs_to:leave_type
  belongs_to:employee
end
