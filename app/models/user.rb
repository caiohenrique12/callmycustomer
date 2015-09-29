class User < ActiveRecord::Base

	validates_presence_of :email, :nome
	validates_length_of :email, :nome, allow_blank: false

	has_secure_password

	before_create do |user|
		user.confirmation_token = SecureRandom.urlsafe_base64
	end

	def confirm!
		return if confirmed?

		self.confirmed_at = Time.current
		self.confirmation_token = ''
		save!
	end

	def confirmed?
		confirmed_at.present?
	end
end
