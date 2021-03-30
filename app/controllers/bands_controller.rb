class BandsController < ApplicationController
	def index
		@bands = Band.all
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

end
