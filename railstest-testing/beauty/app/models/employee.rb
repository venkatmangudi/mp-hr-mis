class Employee < ActiveRecord::Base
  attr_accessible :blood_group_id, :caste_id, :category_id, :emp_dob, :emp_email, :emp_fathername, :emp_fname, :emp_full_name, :gender_id, :emp_id, :emp_lname, :emp_loc_master_id, :emp_mname, :emp_mobile_no, :emp_permanent_address, :emp_phone_no, :religion_id
  
  has_many:postings
  has_many:dependents
  has_many:qualifications
  has_many:leaveemps
  has_many:achievements

  belongs_to:gender
  belongs_to:category
  belongs_to:religion
  belongs_to:caste
  belongs_to:blood_group

  validates_presence_of(:emp_fname)
  validates_presence_of(:emp_lname)
  validates_presence_of(:emp_full_name)
  validates_presence_of(:emp_mobile_no)
  validates_presence_of(:emp_id)
  validates_uniqueness_of(:emp_id)
  validates_presence_of(:gender)
  validates_presence_of(:emp_fname)
  validates_presence_of(:emp_lname)
  validates_presence_of(:emp_mobile_no)
  validates_presence_of(:emp_id)
  validates_uniqueness_of(:emp_id)
  

end
