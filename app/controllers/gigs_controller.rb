require 'pry'
class GigsController < ApplicationController
	before_action :authenticate_user!, only: [:create, :update, :delete]

	def index
		@gigs = Gig.all
	end
	
	def show
		@gig = Gig.find(params[:id])
	end

	def new
		@gig = Gig.new
	end

	def create
		@gig = Gig.new(gig_params)
		if @gig.save
			redirect_to @gig
    	else
			render :new
    end

	end
	
	def edit
		@gig = Gig.find(params[:id])
	end

	private

		def gig_params
			params.require(:gig).permit(:name, :description, :joinable)
		end


end
