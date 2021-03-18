class BandsController < ApplicationController
	before_action.authenticate_user!
	
	def index
		@bands = Band.all
	end

end
