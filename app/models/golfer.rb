class Golfer < ApplicationRecord
    belongs_to :foursome, optional: true
    has_many :courses, through: :foursome

    validates :initials, presence: true


    def wolf_games
        binding.pry

    end

end
