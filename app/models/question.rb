class Question 

	include Mongoid::Document

	field :text, type: String
	field :answer, type: Integer || String

	embedded_in :games
end