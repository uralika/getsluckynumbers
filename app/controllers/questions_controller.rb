class QuestionsController < ApplicationController

	def index

		@questions = Question.all		
	end

	def powerball

		if current_user
		   @questions = Question.new
		else 
		   redirect_to authentications_url
		end
	end

	def mega

		if current_user
		   @questions = Question.new
		else 
		  redirect_to authentications_url
		end
	end

	def fantasy
	    if current_user
		   @questions = Question.new
		else 
		  redirect_to authentications_url
		end
	end

	def super

		if current_user
		  @questions = Question.new
		else 
		  redirect_to authentications_url
		end
	end

	def dailyfour

		if current_user
		  @questions = Question.new
		else 
		  redirect_to authentications_url
		end
	end

	def dailythree

		if current_user
		  @questions = Question.new
		else 
		  redirect_to authentications_url
		end
	end

   	def show
		@question = Game.first.questions.find(params[:id])
	end

	def create
		@question = Question.create(params[:question].permit(:text))
	end

	def destroy
		Question.find(params[:text]).destroy
		redirect_to questions_url
	end
end
