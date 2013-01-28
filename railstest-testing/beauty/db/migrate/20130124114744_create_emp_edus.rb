class CreateEmpEdus < ActiveRecord::Migration
  def change
    create_table :emp_edus do |t|
      t.string :emp_id
      t.string :emp_education
      t.string :emp_specialisation
      t.text :emp_remarks

      t.timestamps
    end
  end
end
