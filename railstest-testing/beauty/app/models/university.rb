class University < ActiveRecord::Base
  attr_accessible :University_name

  has_many:qualifications
end
