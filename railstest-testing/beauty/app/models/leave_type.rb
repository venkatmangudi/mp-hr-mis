class LeaveType < ActiveRecord::Base
  attr_accessible :leave_type
  has_many:leaveemps
end
