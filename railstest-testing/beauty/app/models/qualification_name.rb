class QualificationName < ActiveRecord::Base
  attr_accessible :Qualification_name

  has_many:qualifications
end
