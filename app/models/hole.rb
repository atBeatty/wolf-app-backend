class Hole < ApplicationRecord
    belongs_to :course
    # validates :score, numericality: true
    validates :score, presence: true
end
