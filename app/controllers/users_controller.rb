class UsersController < ApplicationController


  def new
  end

  private 
  def user_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation)
  end
end