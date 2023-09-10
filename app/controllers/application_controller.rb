class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:restricted_action]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  private
  
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:profile_image])
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:username])

  end
end
