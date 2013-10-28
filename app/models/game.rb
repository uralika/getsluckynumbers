class Game
	include Mongoid::Document

	field :title, type: String

	embeds_many :questions
end