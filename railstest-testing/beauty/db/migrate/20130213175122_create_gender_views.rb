class CreateGenderViews < ActiveRecord::Migration
  def change
    create_table :gender_views do |t|

      t.timestamps
    end
  end
end
