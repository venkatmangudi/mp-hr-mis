class Promotion < ActiveRecord::Base
  attr_accessible :current_payscale, :designation_id, :designation_id, :employee_id, :new_payscale, :order_no
    belongs_to:employee
    belongs_to:designation
end
