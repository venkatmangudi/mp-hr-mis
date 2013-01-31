class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.integer :employee_id
      t.integer :qualification_type_id
      t.integer :qualification_name_id
      t.integer :specialisation_id
      t.integer :year
      t.integer :university_id
      t.text :Remarks

      t.timestamps
    end
  end
end
