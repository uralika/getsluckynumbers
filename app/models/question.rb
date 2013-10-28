class Question 

	include Mongoid::Document

	attr_accessor :question, :text, :number

	field :text, type: String
	field :number, type: Integer
	field :answer, type: Integer || String

	embedded_in :games
end