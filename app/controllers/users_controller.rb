class UsersController < ApplicationController

	def show
		@gigs = current_user.gigs.all
		@bands = current_user.bands.all
	end
end
