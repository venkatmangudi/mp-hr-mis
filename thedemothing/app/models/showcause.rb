class Showcause < ActiveRecord::Base
  attr_accessible :SC_date, :case_no, :details, :district_authority, :employee_id, :title
  belongs_to:employee
end
