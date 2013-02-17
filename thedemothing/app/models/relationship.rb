class Relationship < ActiveRecord::Base
  attr_accessible :rel_name

  has_many:dependents
end
