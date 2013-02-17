class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :employee_id
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.integer :postalcode
      t.string :postoffice
      t.integer :state_id
      t.date :validsince
      t.integer :homephone
      t.integer :mobilephone
      t.string :emailid
      t.string :perm_address1
      t.string :perm_address2
      t.string :perm_address3
      t.string :perm_city
      t.string :perm_postalcode
      t.string :perm_postoffice
      t.integer :perm_state_id
      t.integer :perm_homephone

      t.timestamps
    end
  end
end
