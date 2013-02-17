class AddDesignationIdToSanctionedPost < ActiveRecord::Migration
  def change
    add_column :sanctioned_posts, :designation_id, :integer
  end
end
