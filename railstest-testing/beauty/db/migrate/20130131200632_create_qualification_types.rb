class CreateQualificationTypes < ActiveRecord::Migration
  def change
    create_table :qualification_types do |t|
      t.string :Qualification_type

      t.timestamps
    end
  end
end
