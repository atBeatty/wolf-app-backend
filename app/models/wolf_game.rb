class WolfGame < ApplicationRecord
  belongs_to :course
  belongs_to :foursome

  # has_many :holes, through: course
  # has_many :golfers, through: foursome



  

end
