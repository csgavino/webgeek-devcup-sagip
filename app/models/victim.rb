class Victim < ActiveRecord::Base
  belongs_to :shelter, :counter_cache => true
  belongs_to :user
  attr_accessible :age, :description, :name, :shelter_id, :status, :user_id

  validates_presence_of :name, :maximum => 255

  validates_presence_of :age
  validates_numericality_of :age, :greater_than => 0, :less_than => 120, :only_integer => true

  CRITICAL = 1
  SICK  = 2
  ALIVE = 3

  scope :name_like, lambda { |victim_name|
    { :conditions => ["name ~* ?", victim_name] }
  }

end
