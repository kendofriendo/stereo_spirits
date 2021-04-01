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
		@mem_ids = Band.all.each do |u| u.users.ids end
			if @mem_ids.include?(current_user.id)
			flash[:error] = "Already in that Band."
			render profile_path
		else
		@band = Band.find(params[:id])
		@user = current_user
		@user.bands << @band
			redirect_to band_path
		end
	end
end
