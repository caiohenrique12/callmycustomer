class HomeController < ApplicationController

	def index
		@call_services = CallService.all
		@users = User.all
	end

	protected

	def authenticate_user!
	end

end
