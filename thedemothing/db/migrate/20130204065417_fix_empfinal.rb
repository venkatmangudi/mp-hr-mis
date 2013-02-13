class FixEmpfinal < ActiveRecord::Migration
	def change
    	
    	change_column :employees, :category_id, :integer

    	
    	change_column :employees, :religion_id, :integer
    	
    	
    	change_column :employees, :caste_id, :integer

    	
    	change_column :employees, :blood_group_id, :integer   

    	change_column :employees, :emp_dob, :date  	 
  	end
end
