class CreateShowcauses < ActiveRecord::Migration
  def change
    create_table :showcauses do |t|
      t.integer :employee_id
      t.integer :case_no
      t.string :district_authority
      t.date :SC_date
      t.string :title
      t.text :details

      t.timestamps
    end
  end
end
