class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :gender_name

      t.timestamps
    end
  end
end
