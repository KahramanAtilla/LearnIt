class UsersController < ApplicationController
  	def show

		@user = User.find(params[:id])

	end
	
	def edit
		@user = User.find(params[:id])
	end
	
	def update
		@user = User.find(params[:id])
		user_params = params.require(:user).permit(:first_name, :last_name)
		if @user.update(user_params)
			flash[:success] = "Ton profil est modifié"
			redirect_to user_path(:id => current_user.id)
		else
			render :edit
		end
	end

	def index
		@user = current_user
		@all_my_lessons = @user.lessons.reverse
	end
end
