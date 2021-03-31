class BandsController < ApplicationController
	def index
		if params[:user_id]
			@bands = User.find(params[:user_id]).bands
		else
			@bands = Band.all
		end
	end

	def new
		@band = Band.new
	end
	def create
		@band = Band.new(band_params)
			if @band.save
				flash[:success] = "Band successfully created"
				redirect_to @band
			else
				flash[:error] = "Something went wrong"
				render 'new'
			end	
	end

	private
	
	def band_params
		params.require(:band).permit(:name, :description)
	end

	def show
		@band = Band.find(params[:id])
	end
end
