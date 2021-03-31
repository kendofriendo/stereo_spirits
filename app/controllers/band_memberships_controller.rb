class BandMembershipsController < ApplicationController

	
	
	def index
		@band_memberships = BandMembership.all
	end

	def new
		User.find(params[:id]).bands << Band.create(band_params)
	end
end