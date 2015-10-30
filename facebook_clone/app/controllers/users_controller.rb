class UsersController < ApplicationController

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to(@user)
    else
      render 'edit'
    end
  end

  def new
    @user = User.new
  end

  def index
  end

  def show
  end

  def create
  	@user = User.create(user_params)
  end

  private

  def user_params
  	params.require(:user).permit(:avatar)
  end

end
