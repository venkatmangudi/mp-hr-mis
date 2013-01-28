class CreateTempus < ActiveRecord::Migration
  def change
    create_table :tempus do |t|
      t.string :state_id

      t.timestamps
    end
  end
end
