class Hospital < ActiveRecord::Base
  attr_accessible :location_code, :beds, :against_med_bond, :anm, :avg_daily_opd, :calssI, :classII, :clerical_staff, :con_doctors, :deputation_studies, :fax_no, :hospital_name, :nurses, :others, :pharmacists, :phone_no, :post_graduates, :regular_for_duties, :regular_posts, :total_doctors, :unauthorised_absent, :wardboy, :district_id, :institution_type_id

  belongs_to :district
  belongs_to :institution_type  

  has_many :hospital_reports
  has_many:health_dept_locations

end
