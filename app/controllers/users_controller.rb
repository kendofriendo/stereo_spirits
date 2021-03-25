class UsersController < ApplicationController

	def show

		@bands = current_user.bands.all
	end
end
