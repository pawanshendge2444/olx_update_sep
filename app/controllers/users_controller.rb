class UsersController < ApplicationController
	def new
	end

	def edit
	  @user = User.find(params[:id])
	end

	def update
	  @user = User.find(params[:id])
	  if @user.update(user_params)
	    flash[:success] = "User updated successfully."
	    redirect_to get_user_details_path
	  else
	    render 'edit'
	  end
	end

	def get_user_details
	  @user = current_user
	  # if @user.profile_image.attached?

	  	
	  # else
	    # render :index
	  # end
	end

	private
	def user_params
		params.require(:user).permit(:username, :profile_image)
	end
end
