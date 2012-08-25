class Shelter < ActiveRecord::Base
  attr_accessible :address, :capacity, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode
end
