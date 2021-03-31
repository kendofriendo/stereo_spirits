class BandMembershipsController < ApplicationController

	
	
	def index
		@band_memberships = BandMembership.all
	end

	def show
		@band_membership = current_user.bands.new
	end
end