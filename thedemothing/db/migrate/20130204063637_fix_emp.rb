class FixEmp < ActiveRecord::Migration
	def change
    	rename_column :employees, :gender_id, :gender_id
    	change_column :employees, :gender_id, :integer
  	end
end
