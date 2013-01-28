class CreateMartialStats < ActiveRecord::Migration
  def change
    create_table :martial_stats do |t|
      t.string :martial_status_type

      t.timestamps
    end
  end
end
