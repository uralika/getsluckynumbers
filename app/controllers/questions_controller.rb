class QuestionsController < ApplicationController

	def index
		@questions = Question.all
		

	end

	def new
		@questions = Question.new
	end

	def show
		@question.find(params[:text])

	def create
		@question = Question.create(params[:question].permit(:text))
		#:action => "show", :number => @question.number
	end

	def destroy
		Question.find(params[:text]).destroy
		redirect_to questions_url
	end
end
end