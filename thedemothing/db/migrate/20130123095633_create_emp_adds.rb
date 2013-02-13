class CreateEmpAdds < ActiveRecord::Migration
  def change
    create_table :emp_adds do |t|
      t.string :emp_id
      t.string :emp_martial_status_id
      t.string :emp_present_addr
      t.string :emp_identification
      t.string :emp_pannum
      t.string :emp_dlnum
      t.string :emp_passportnum
      t.string :emp_alt_email
      t.string :emp_alt_phone
      t.string :emp_alt_mobile
      t.string :emp_present_loc_master_id

      t.timestamps
    end
  end
end
