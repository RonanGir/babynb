class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :store_user_location!, if: :storable_location?

  private

  def after_sign_in_path_for(resource)
    # binding.pry
    previous_user_location = stored_location_for(resource)
    if previous_user_location == root_path
      babies_path
    else
      previous_user_location
    end
  end

  def after_sign_out_path_for(resource)
    babies_path
  end

  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    # :user is the scope we are authenticating
    store_location_for(:user, request.fullpath)
  end
end
