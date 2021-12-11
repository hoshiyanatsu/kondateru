class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :profile, :avatar)
  end
end
