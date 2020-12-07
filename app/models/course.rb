class Course < ApplicationRecord
    has_many :wolf_games
    has_many :foursomes, through: :wolf_games
    has_many :holes

    
end

