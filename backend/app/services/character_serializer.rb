class CharacterSerializer 


    def initialize(character_object)
        @character = character_object
    end
    
    def to_serialized_json
        @character.to_json(:include => {
        :users => {:only => [:id, :username]},
        :games => {:only => [:id, :time, :good_moves, :bad_moves]}
        })
    end

end 