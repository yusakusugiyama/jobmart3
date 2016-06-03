class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @likes = @user.u_to_c_likes
  end
end
