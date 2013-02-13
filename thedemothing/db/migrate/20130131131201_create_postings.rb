class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.integer :employee_id
      t.integer :institution_master_id
      t.integer :designation_id
      t.date :posting_from
      t.date :posting_to
      t.string :payscale

      t.timestamps
    end
  end
end
