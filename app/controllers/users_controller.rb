class UsersController < ApplicationController

	def index
		@users = User.all
	end
	
	def show
		if params[:id]
			@user = User.find(params[:id])
		else
			@user = current_user
		end
	end

	def join_band
		binding.pry
		@band = Band.find(params[:id])
		@user = current_user
		@user.bands << @band
	end

end
