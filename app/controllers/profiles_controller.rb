class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if current_password_valid? && @profile.update(profile_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:user).permit(:firstname, :lastname, :email, :gender, :age, :description, :photo)
  end

  def current_password_valid?
    params[:user][:current_password] == @profile.current_password
  end

  def set_profile
    @profile = current_user
  end
end
