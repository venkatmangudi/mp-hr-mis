class CleanEmpNum < ActiveRecord::Migration
	def change
		remove_column :employees, :emp_no
		remove_column :employees, :emp_new_id	
	end
end
