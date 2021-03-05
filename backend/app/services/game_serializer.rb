class GameSerializer
    def initialize(game_object)
        @game = game_object
    end

    def to_serialized_json
        @game.to_json(:include => {
        :user => {:only => [:username]},
        :character => {:only => [:character_name]}
        })
    end 

end