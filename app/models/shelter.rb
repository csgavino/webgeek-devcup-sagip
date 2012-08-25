class Shelter < ActiveRecord::Base
  attr_accessible :address, :capacity, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode
  has_many :victims

  def to_label
    address
  end

end
