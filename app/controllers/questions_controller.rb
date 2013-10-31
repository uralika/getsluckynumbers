class QuestionsController < ApplicationController

	def index

		@questions = Question.all
		
	end

	def new

	if current_user
		@questions = Question.new
	else 
		redirect_to authentications_url
	end
end

	def show
		@question.find(params[:text])

	def create
		@question = Question.create(params[:question].permit(:text))
	end

	def destroy
		Question.find(params[:text]).destroy
		redirect_to questions_url
	end
end
end