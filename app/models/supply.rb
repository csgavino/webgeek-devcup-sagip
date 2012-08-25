class Supply < ActiveRecord::Base
  attr_accessible :quantity, :shelter_id, :code
  belongs_to :shelter
end
