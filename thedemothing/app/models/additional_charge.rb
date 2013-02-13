class AdditionalCharge < ActiveRecord::Base
  attr_accessible :add_chargeID, :designation_id, :employee_id, :from_date, :location_id, :to_date

  belongs_to:location
  belongs_to:designation
  belongs_to:employee

end
