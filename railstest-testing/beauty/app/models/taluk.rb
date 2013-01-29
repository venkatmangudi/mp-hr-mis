class Taluk < ActiveRecord::Base
  attr_accessible :taluk_name
  belongs_to :location
  validates_uniqueness_of(:taluk_name, :message => "There is already a Taluk with that name")
end
