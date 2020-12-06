class Golfer < ApplicationRecord
    belongs_to :foursome, optional: true

end
