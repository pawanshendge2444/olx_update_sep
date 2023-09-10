class HomesController < ApplicationController
	def index
	end

	def get_user_details
	  @user = current_user
	  if @user.profile_image.attached?
	    flash[:notice] = "User profile"
	    redirect_to :root_path # Replace 'index_path' with the correct path to your 'index' action.
	  else
	    flash[:error] = "User has not uploaded a profile image"
	    render 'index', status: :unprocessable_entity
	  end
	end
end
