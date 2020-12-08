class Foursome < ApplicationRecord
    has_many :wolf_games
    has_many :courses, through: :wolf_games
    has_many :golfers

    accepts_nested_attributes_for :golfers

    
    


    
end
