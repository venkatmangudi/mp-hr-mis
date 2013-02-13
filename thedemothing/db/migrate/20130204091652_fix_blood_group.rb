class FixBloodGroup < ActiveRecord::Migration
	def change
		rename_column :employees, :blood_group_id, :blood_group_id
	end
    	
end
