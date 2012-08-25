class Victim < ActiveRecord::Base
  belongs_to :shelter
  belongs_to :user
  attr_accessible :age, :description, :name, :shelter_id, :status, :user_id

  CRITICAL = 1
  SICK  = 2
  ALIVE = 3

  scope :name_like, lambda { |victim_name|
    { :conditions => ["name ~* ?", victim_name] }
  }
end
