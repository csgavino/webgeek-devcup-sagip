class Victim < ActiveRecord::Base
  belongs_to :shelter
  belongs_to :user
  attr_accessible :age, :description, :name, :shelter_id, :status, :user_id

  validates_presence_of :name, :maximum => 255

  validates_presence_of :age
  validates_numericality_of :age, :greater_than => 0, :less_than => 120, :only_integer => true

  CRITICAL = 1
  SICK  = 2
  ALIVE = 3
  DECEASED = 4

  scope :name_like, lambda { |victim_name|
    { :conditions => ["name ~* ?", victim_name] }
  }

  def to_status
    case self.status
    when CRITICAL
      "Critical"
    when SICK
      "Sick"
    when ALIVE
      "Alive"
    when DECEASED
      "Deceased"
    end
  end

end
