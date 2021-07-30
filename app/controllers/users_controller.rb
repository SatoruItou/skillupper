class UsersController < ApplicationController


  def new
  end

  def show
    @user = User.find(params[:id])
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
