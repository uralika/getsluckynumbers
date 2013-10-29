class GamesController < ApplicationController
	def new
		@games = Game.new
	end

	def create 
		@game = Game.create(params[:game].permit(:title))
	end

end