class AddDivisionIdToDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :division_id, :integer
  end
end
