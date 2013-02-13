class CreateQualificationNames < ActiveRecord::Migration
  def change
    create_table :qualification_names do |t|
      t.string :Qualification_name

      t.timestamps
    end
  end
end
