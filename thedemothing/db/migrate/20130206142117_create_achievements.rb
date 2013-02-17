class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.integer :employee_id
      t.string :award_name
      t.string :award_given_by
      t.text :details

      t.timestamps
    end
  end
end
