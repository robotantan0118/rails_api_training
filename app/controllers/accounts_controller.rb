class AccountsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    if user.present?
      render json: user.accounts_json
    else
      render :not_found
    end
  end

  def show
    account = Account.find(params[:id])
    if account.present?
      render json: account.to_detail
    else
      render :not_found
    end
  end
end
