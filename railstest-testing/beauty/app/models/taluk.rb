class Taluk < ActiveRecord::Base
  attr_accessible :taluk_name
  belongs_to :location
end
