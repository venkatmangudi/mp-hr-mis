class CreateInstitutionMasters < ActiveRecord::Migration
  def change
    create_table :institution_masters do |t|
      t.integer :pincode_id
      t.string :Institution_Name
      t.integer :Institution_type_id
      t.integer :Special_Cadre_id
      t.integer :district_id
      t.integer :Beds

      t.timestamps
    end
  end
end
