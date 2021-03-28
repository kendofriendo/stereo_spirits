class BandsController < ApplicationController
	def index
		@bands = Band.all
	end
	def new
		@band = Band.new
	end
	def create
		@band = Band.new(params[:band])
		if @band.save
			flash[:success] = "Band successfully created"
			redirect_to @band
		else
			flash[:error] = "Something went wrong"
			render 'new'
		end
	end
end
