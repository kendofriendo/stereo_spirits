class BandMembershipsController < ApplicationController

	
	
	def index
		@band_memberships = BandMembership.all
	end

	def show
		@bands = Band.all
		@users = User.all
		@band_membership = current_user.bands.new
	end
end