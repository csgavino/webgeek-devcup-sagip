class Shelter < ActiveRecord::Base
  attr_accessible :name, :address, :capacity, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode
  has_many :victims

  validates_presence_of :name, :maximum => 255

  validates_presence_of :address, :maximum => 255

  validates_presence_of :capacity
  validates_numericality_of :capacity, :greater_than => 0, :less_than => 50000, :only_integer => true

  def to_label
    address
  end

  def capacity_in_percent
    (victims_count / capacity.to_f) * 100
  end

end
