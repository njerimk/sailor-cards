class GamesController < ApplicationController
  def index
    games = Game.all 
    render json: GameSerializer.new(games).to_serialized_json
  end

  def show 
    game = Game.find_by(id: params[:id])
    render json: GameSerializer.new(game).to_serialized_json
  end

  def new
    game = Game.new(game_params)
    render json: GameSerializer.new(game).to_serialized_json
  end

  def create
    game = Game.create(game_params)
    render json: game
  end 

  def edit
    game = Game.find(id: params[:id])
  end

  def update
    game = Game.find(id: params[:id])
    game.update(game_params)
    redirect_to game_path(game.id)
  end



  private

  def game_params
    params.require(:game).permit(:id, :user_ids, :character_ids, :time, :bad_moves, :good_moves)
  end
end
