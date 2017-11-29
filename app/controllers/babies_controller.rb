class BabiesController < ApplicationController
  skip_before_action  :authenticate_user!, only: [:index, :show]

  def index
    @babies = Baby.all
  end
end
