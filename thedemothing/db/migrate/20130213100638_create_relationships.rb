class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :rel_name

      t.timestamps
    end
  end
end
