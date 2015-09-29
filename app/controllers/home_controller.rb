class HomeController < ApplicationController
	
	def index
		@call_services = CallService.all
	end
	
end