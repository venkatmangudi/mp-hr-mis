class Role < ActiveRecord::Base
  attr_accessible :role_name

  has_many :users
end
