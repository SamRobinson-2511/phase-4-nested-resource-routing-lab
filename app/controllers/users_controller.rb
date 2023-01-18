class UsersController < ApplicationController

  def index 
    
  end


  def show
    user = User.find(params[:id])
    render json: user, include: :items
  end


  private
  
  def user_params
    params.require(:user).permit(:username, :city)
  end

  def find_user
    User.find(params[:id])
  end
end
