class AddBlockIdToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :block_id, :integer
  end
end
