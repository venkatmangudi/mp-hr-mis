class CreateReligions < ActiveRecord::Migration
  def change
    create_table :religions do |t|
      t.string :religion_name

      t.timestamps
    end
  end
end
