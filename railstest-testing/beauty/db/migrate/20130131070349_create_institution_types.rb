class CreateInstitutionTypes < ActiveRecord::Migration
  def change
    create_table :institution_types do |t|
      t.string :Institution_type

      t.timestamps
    end
  end
end
