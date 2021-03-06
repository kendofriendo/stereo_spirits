class BandsController < ApplicationController
	before_action :authenticate_user!
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
		if params[:band_id] then @band = Band.find(params[:band_id])
		else
		@band = Band.new(band_params)
			if @band.save				
				flash[:success] = "Band successfully created"
				redirect_to @band
				current_user.bands << @band || User.find_by(params[:id]).bands << @band
			else
				flash[:error] = "Something went wrong"
				render 'new'
			end	
		end
	end

def update
	@band = Band.find(params[:id])
	@band.update!(band_params)
	redirect_to @band
end
	
def edit
	@band = Band.find(params[:id])
end
def show
	@band = Band.find(params[:id])
end
	private
	
	def band_params
		params.require(:band).permit(:name, :description)
	end
end
