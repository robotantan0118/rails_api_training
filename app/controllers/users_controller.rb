class UsersController < ApplicationController
  def index
    user = User.find(params[:user_id])
    if user.present?
      render json: user.to_detail
    else
      render :not_found
    end
  end
end
