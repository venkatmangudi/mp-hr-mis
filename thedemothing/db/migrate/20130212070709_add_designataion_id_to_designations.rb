class AddDesignataionIdToDesignations < ActiveRecord::Migration
  def change
    add_column :designations, :designataionID, :string
  end
end
