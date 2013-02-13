class CreateTaluks < ActiveRecord::Migration
  def change
    create_table :taluks do |t|
      t.string :taluk_name

      t.timestamps
    end
  end
end
