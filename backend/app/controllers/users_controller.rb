class UsersController < ApplicationController
  def index
    users = User.all 
    render json: UserSerializer.new(users).to_serialized_json
  end

  def show 
    user = User.find_by(id: params[:id])
    render json: UserSerializer.new(user).to_serialized_json
  end

  def new
    user = User.new
    render json: UserSerializer.new(user).to_serialized_json
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user
    else
      render :action => "new"
    end
  end


  private
  def user_params
    params.require(:user).permit(:user_name)
  end


end

  
  
  
  
  
