class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.integer :location_code
      t.integer :beds
      t.string :hospital_name
      t.integer :total_doctors
      t.integer :post_graduates
      t.integer :calssI
      t.integer :classII
      t.integer :regular_posts
      t.integer :con_doctors
      t.integer :against_med_bond
      t.integer :regular_for_duties
      t.integer :unauthorised_absent
      t.integer :deputation_studies
      t.integer :others
      t.integer :nurses
      t.integer :pharmacists
      t.integer :anm
      t.integer :wardboy
      t.integer :clerical_staff
      t.integer :avg_daily_opd
      t.integer :phone_no
      t.integer :fax_no

      t.integer :district_id
      t.integer :institution_type_id

      t.timestamps
    end
  end
end
