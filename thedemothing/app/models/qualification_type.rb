class QualificationType < ActiveRecord::Base
  attr_accessible :Qualification_type

  has_many:qualifications
end
