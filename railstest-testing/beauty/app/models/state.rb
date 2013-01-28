class State < ActiveRecord::Base
  attr_accessible :state_name
  belongs_to :tempu
end
