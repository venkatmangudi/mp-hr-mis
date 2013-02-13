class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.string :Relation_name

      t.timestamps
    end
  end
end
