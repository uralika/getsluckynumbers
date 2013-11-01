class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user]
			.permit(:email, :password, :password_confirmation, :username))
		if @user.save
			redirect_to "/authentications/new"
		else
			redirect_to action:"new"

		end
	end
end