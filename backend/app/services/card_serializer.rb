class CardSerializer 


  def initialize(card_object)
    @card = card_object
  end

    def to_serialized_json
        @card.to_json(:include => {
            :game => {:except => [:created_at, :updated_at]}
        })
    end 

end