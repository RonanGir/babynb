class Account::RequestsController < ApplicationController
  def index
    @requests = current_user.requests
  end

  def accept
    # 1. On chope la request (booking en vrai) parmi ceux du current_user qui doit
    # maintenant être acceptée
    @request = current_user.requests.find(params[:id])
    # 2. On change du coup le statut de cette request à accepted
    @request.status = "accepted"
    @request.save
    # 3. Redirige l'user vers l'index des requests
    redirect_to account_requests_path
  end

  def decline
    @request = current_user.requests.find(params[:id])
    # 2. On change du coup le statut de cette request à accepted
    @request.status = "declined"
    @request.save
    # 3. Redirige l'user vers l'index des requests
    redirect_to account_requests_path
  end

  private

  def request_params
    params.require(:request).permit(:price_per_day)
  end
end
