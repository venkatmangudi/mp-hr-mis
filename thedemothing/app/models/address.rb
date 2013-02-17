class Address < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :city, :emailid, :employee_id, :homephone, :mobilephone, :perm_address1, :perm_address2, :perm_address3, :perm_city, :perm_homephone, :perm_postalcode, :perm_postoffice, :perm_state_id, :postalcode, :postoffice, :state_id, :validsince, :state_id

belongs_to:employee
belongs_to:state

end
