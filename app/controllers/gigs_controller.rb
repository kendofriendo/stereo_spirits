class GigsController < ApplicationController

	def index
		@gigs = Gig.all
	end
	
	def create
		before_action authenticate_user!
		@gig = Gig.new

	end
	

end
