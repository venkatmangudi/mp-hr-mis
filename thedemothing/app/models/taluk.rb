class Taluk < ActiveRecord::Base
  attr_accessible :taluk_name
 
  has_many:locations

  validates_uniqueness_of(:taluk_name)
  validates_presence_of(:taluk_name)
end
