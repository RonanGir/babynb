class Account::BabiesController < ApplicationController
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

  private

  def baby_params
    params.require(:baby).permit(:firstname, :lastname, :gender, :age, :origin, :location, :price, :description, :availability, :photo)
  end
end
