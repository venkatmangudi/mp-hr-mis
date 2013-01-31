class Specialisation < ActiveRecord::Base
  attr_accessible :Specialisation_name

  has_many:qualifications
end
