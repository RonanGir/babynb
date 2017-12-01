class BabiesController < ApplicationController
  skip_before_action  :authenticate_user!, only: [:index, :show]

  def index
    @babies = Baby.all
    location_search = params.dig(:search, :location)
    if location_search
      @babies = @babies.where(location: location_search)
    end
  end

  def show
    @baby = Baby.find(params[:id])
  end
end

