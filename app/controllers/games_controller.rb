class GamesController < ApplicationController
	def index
		@games = Game.all
		redirect_to root_url
	end

	def new
		@games = Game.new
	end

	def create 
		@game = Game.create(params[:game].permit(:title))
	end

end