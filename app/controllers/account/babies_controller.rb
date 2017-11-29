class Account::BabiesController < ApplicationController
  before_action :set_baby, only: [:edit, :update]

  def new
    @baby = Baby.new
  end

  def create
    @baby = Baby.new(baby_params)
    @baby.user = current_user
    if @baby.save
      redirect_to account_baby_path(@baby)
    else
      render :new
    end
  end

  def edit
    @baby_origins = Baby::ORIGINS
  end

  def update
    if @baby.update(baby_params)
      redirect_to account_baby_path(@baby)
    else
      render :new
    end
  end

  private

  def set_baby
    @baby = Baby.find(params[:id])
  end

  def baby_params
    params.require(:baby).permit(:firstname, :lastname, :gender, :age, :origin, :location, :price, :description, :availability, :photo)
  end
end
