class CreateSanctionedPosts < ActiveRecord::Migration
  def change
    create_table :sanctioned_posts do |t|
      t.integer :health_dept_locationID
      t.integer :designationID
      t.integer :sac_post

      t.timestamps
    end
  end
end
