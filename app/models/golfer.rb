class Golfer < ApplicationRecord
    belongs_to :foursome, optional: true
    has_many :courses, through: :foursome


    def wolf_games
        binding.pry
        
    end

end
