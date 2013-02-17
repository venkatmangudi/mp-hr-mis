class AddDistrictIdToPosting < ActiveRecord::Migration
  def change
    add_column :postings, :district_id, :integer
  end
end
