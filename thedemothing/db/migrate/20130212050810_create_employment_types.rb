class CreateEmploymentTypes < ActiveRecord::Migration
  def change
    create_table :employment_types do |t|
      t.string :employment_type

      t.timestamps
    end
  end
end
