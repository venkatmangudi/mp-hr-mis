class AddStateIdToDivision < ActiveRecord::Migration
  def change
    add_column :divisions, :state_id, :integer
  end
end
