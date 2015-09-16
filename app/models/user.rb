class User < ActiveRecord::Base

	validates_presence_of :email, :nome, :password
	validates_confirmation_of :password

	validates_length_of :email, :nome, :password, allow_blank: false
end
