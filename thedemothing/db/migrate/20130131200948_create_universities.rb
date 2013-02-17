class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :University_name

      t.timestamps
    end
  end
end
