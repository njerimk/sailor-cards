class CardsController < ApplicationController


    def index
        cards = Card.all 
        render json: CardSerializer.new(cards).to_serialized_json
      end
    
      def show 
        card = Card.find_by(id: params[:id])
        render json: CardSerializer.new(card).to_serialized_json
      end
    
      def new
        card = Card.new
        render json: CardSerializer.new(card).to_serialized_json
      end
    
      def create
        card = Card.create(card_params)
        render json: card
      end

      def edit
        card = Card.find(id: params(:id))
        render json: card

      end
      
      def update
        card = Card.find_by(id: params[:id])
        card.update(card_params)
        render json: card

      end


      private
    
      def card_params
        params.require(:card).permit(:id, :frontImg, :backImg, :flipped, :pair_name, :game_id)
      end

end
