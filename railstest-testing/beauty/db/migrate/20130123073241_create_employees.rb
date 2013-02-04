class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :emp_id
      t.string :emp_no
      t.string :emp_new_id
      t.string :emp_full_name
      t.string :emp_fname
      t.string :emp_mname
      t.string :emp_lname
      t.string :emp_fathername
      t.string :gender_id
      t.datetime :emp_dob
      t.string :category_id
      t.string :religion_id
      t.string :caste_id
      t.string :blood_group_id
      t.string :emp_permanent_address
      t.string :emp_loc_master_id
      t.string :emp_phone_no
      t.string :emp_mobile_no
      t.string :emp_email

      t.timestamps
    end
  end
end
