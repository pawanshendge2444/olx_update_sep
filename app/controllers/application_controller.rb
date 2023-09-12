class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:restricted_action]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    # Replace 'new_page_path' with the path to the new page you want to redirect to.
    landings_path
  end
  
  
  private
  
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:profile_image])
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
