class Victim < ActiveRecord::Base
  attr_accessible :age, :description, :name, :shelter_id, :status
end
