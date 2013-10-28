class GamesController < ApplicationController


	def create 
		@game = Game.create(params[:game].permit(:title))
	end

end