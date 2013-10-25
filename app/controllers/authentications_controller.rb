class AuthenticationsController < ApplicationController
	before_action :authenticate_user, only: [:destroy]

	def new
		# Are they already logged in?
		if current_user # They are! Can't create them again
			redirect_to users_url
		else
			@user = User.new

			# render :new
		end
	end

	def create
		user = User.find_by(username: params[:user][:username])
		if user
			# authenticate user
			if user.authenticate(params[:user][:password])
				session[:user_id] = user.id
				redirect_to users_url
			else
				flash.now.alert = "Unable to sign you in. Please try again."
				render :new
			end
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to authentications_url,
		notice: "You signed out."
	
	end
end