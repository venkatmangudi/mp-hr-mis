class AddDistrictIdToBlock < ActiveRecord::Migration
  def change
    add_column :blocks, :district_id, :integer
  end
end
