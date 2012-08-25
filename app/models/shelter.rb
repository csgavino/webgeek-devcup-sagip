class Shelter < ActiveRecord::Base
  has_many :victims
  attr_accessible :name, :address, :capacity, :latitude, :longitude
end
