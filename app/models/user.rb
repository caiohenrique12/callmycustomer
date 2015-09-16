class User < ActiveRecord::Base

	validates_presence_of :email, :nome
	validates_length_of :email, :nome, allow_blank: false

	has_secure_password
end
