class Game < ApplicationRecord
    belongs_to :user
    belongs_to :character
    has_many :cards

end
