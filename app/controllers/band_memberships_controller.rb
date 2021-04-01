class BandMembershipsController < ApplicationController
	def set_band_membership
		@band_membership = BandMembership.find_by(user_id: current_user.id)
		@band_membership.role || @band_membership.build_role
		end
	def leave_band
		if current_user.bands.nil?
		redirect_to band_path
	else
		 BandMembership.find_by(user_id: current_user.id).delete
		 flash[:success] = "Membership terminated"
		 redirect_to profile_url
	end
	end
	def join_band
		
	end
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
	def role_list
		BandMembership.pluck(:role).uniq
	end

	def edit
		@band_membership = BandMembership.find_by(user_id: current_user.id)
	end

	def  update
		@band_membership = BandMembership.find_by(user_id: current_user.id)
	end
	def  show
		@band_membership = BandMembership.find_by(user_id: current_user.id)
	end

		private

		def band_membership_params
			params.require(:band_membership).permit(:user_id, :band_id, :role, :joinable)
		end

end