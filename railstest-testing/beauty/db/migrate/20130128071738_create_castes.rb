class CreateCastes < ActiveRecord::Migration
  def change
    create_table :castes do |t|
      t.string :caste_name

      t.timestamps
    end
  end
end
