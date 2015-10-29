class UsersController < ApplicationController
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
