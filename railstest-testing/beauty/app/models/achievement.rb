class Achievement < ActiveRecord::Base
  attr_accessible :award_given_by, :award_name, :details, :employee_id
  belongs_to:employee
end
