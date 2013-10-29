class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end

	def new
		@questions = Question.new
	end

	def show
		@question.find(params[:number])

	def create
		@question = Question.create(params[:question].permit(:number, :text))
		#:action => "show", :number => @question.number
	end

	def destroy
		Question.find(params[:number]).destroy
		redirect_to questions_url
	end
end
end