class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit]

  def new
  end

  def show
    @user = User.find(params[:id])
    unless  @user.id == current_user.id
      redirect_to root_path
    end
    @skills = @user.skills

  end

  def edit

    @user = User.find(params[:id])
  end
  private 
  def user_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation)
  end

 
end
