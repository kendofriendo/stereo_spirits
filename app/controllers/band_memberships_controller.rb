class BandMembershipsController < ApplicationController

	
	
	def index
		@band_memberships = BandMembership.all
	end
#	user_id = User.find(params[:id]).bands << Band.create(band_params)
	def new
		@band_membership = BandMembership.new
	end

	def create
		@band_membership = BandMembership.new(params[:band_membership])
		if @band_membership.save
			flash[:success] = "BandMembership successfully created"
			redirect_to @band_membership
		else
			flash[:error] = "Something went wrong"
			render 'new'
		end
	end
		private

		def band_membership_params
			 params.require(:band_membership).permit(:user_id, :band_id, :role, :joinable)
		end


	def role_list
		BandMembership.pluck(:role).uniq
	end

	def edit
		@BandMembership = BandMembership.find(:id)
	end
	
end