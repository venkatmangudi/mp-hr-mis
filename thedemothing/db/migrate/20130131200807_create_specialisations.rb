class CreateSpecialisations < ActiveRecord::Migration
  def change
    create_table :specialisations do |t|
      t.string :Specialisation_name

      t.timestamps
    end
  end
end
