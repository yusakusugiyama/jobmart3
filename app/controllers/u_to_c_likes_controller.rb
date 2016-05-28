class UToCLikesController < ApplicationController

  def create
    UToCLike.create(create_params)
    redirect_to :root and return
  end

  private
  def create_params
    params.require(:u_to_c_like).permit(:price, :company_id).merge(user_id: current_user.id)
  end
end
