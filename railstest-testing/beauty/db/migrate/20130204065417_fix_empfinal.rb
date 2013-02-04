class FixEmpfinal < ActiveRecord::Migration
	def change
    	rename_column :employees, :emp_category_id, :category_id
    	change_column :employees, :category_id, :integer

    	rename_column :employees, :emp_religion_id, :religion_id
    	change_column :employees, :religion_id, :integer
    	
    	rename_column :employees, :emp_caste_id, :caste_id
    	change_column :employees, :caste_id, :integer

    	rename_column :employees, :emp_blood_group_id, :blood_group_id
    	change_column :employees, :blood_group_id, :integer   

    	change_column :employees, :emp_dob, :date  	 
  	end
end
