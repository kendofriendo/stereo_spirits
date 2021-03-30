class BandMembershipsController < ApplicationController
	def index	
		@band_memberships = BandMembership.all
	end
end