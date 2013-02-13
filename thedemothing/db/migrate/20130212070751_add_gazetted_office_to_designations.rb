class AddGazettedOfficeToDesignations < ActiveRecord::Migration
  def change
    add_column :designations, :gazetted_officer, :boolean
  end
end
