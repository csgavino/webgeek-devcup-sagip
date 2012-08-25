class Shelter < ActiveRecord::Base
  attr_accessible :address, :capacity, :latitude, :longitude
end
