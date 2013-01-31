class Employee < ActiveRecord::Base
  attr_accessible :emp_bloodgroup_id, :emp_caste_id, :emp_category_id, :emp_dob, :emp_email, :emp_fathername, :emp_fname, :emp_full_name, :emp_gender_id, :emp_id, :emp_lname, :emp_loc_master_id, :emp_mname, :emp_mobile_no, :emp_new_id, :emp_no, :emp_permanent_address, :emp_phone_no, :emp_religion_id
  
  has_many:postings
  has_many:dependents
  has_many:qualifications
end
