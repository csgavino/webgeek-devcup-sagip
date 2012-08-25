class Supply < ActiveRecord::Base
  attr_accessible :quantity, :shelter_id, :code
  belongs_to :shelter


  def get_the_type
    case code
    when 1
      "Food"
    when 2
      "Water"
    when 3
      "First Aid Kit"
    else
      "Bananas"
    end
  end


end
