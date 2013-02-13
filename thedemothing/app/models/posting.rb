class Posting < ActiveRecord::Base
  attr_accessible :designation_id, :employee_id, :institution_master_id, :payscale, :posting_from, :posting_to, :district_id
  
  belongs_to:district  
  belongs_to:employee
  belongs_to:institution_master
  belongs_to:designation
end
