class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :balock_name

      t.timestamps
    end
  end
end
