class CharactersController < ApplicationController
 
  def index
    character = Character.all 
    render json: CharacterSerializer.new(character).to_serialized_json
  end

  def show 
    character = Character.find_by(id: params[:id])
    render json: CharacterSerializer.new(character).to_serialized_json
  end

  def new
    character = Character.new
    render json: CharacterSerializer.new(character).to_serialized_json
  end

  def create
    character = Character.create(character_params)
    render json: character
  end

  private

  def character_params
    params.require(:character).permit(:id, :character_name)  
  end

end

  
  
  
  

