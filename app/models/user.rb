require 'bcrypt'

class User
	include Mongoid::Document

	attr_accessor :password, :password_confirmation

	field :username, type: String
	field :salt, type: String
	field :hashed_password, type: String

	embeds_one :profile

	validates :username, presence: true
	validates :username, uniqueness: { case_sensitive: true }
	validates :password, confirmation: true

	before_save :hash_password

	def authenticate(password)
		self.hashed_password ==
		BCrypt::Engine.hash_secret(password, self.salt)
	end

	private
	def hash_password
		if password.present?
			self.salt = BCrypt::Engine.generate_salt
			self.hashed_password =
			BCrypt::Engine.hash_secret(password, self.salt)
			password = password_confirmation = nil
		end
	end
end