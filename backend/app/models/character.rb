class Character < ApplicationRecord
    has_many :games 
    has_many :users, through: :games
end
