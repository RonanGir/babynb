class BabiesController < ApplicationController
  skip_before_action  :authenticate_user!, only: [:index, :show]

  def index
    @babies = Baby.all
  end

  def show
    @baby = Baby.find(params[:id])
  end
end
