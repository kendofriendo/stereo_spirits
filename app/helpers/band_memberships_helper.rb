module BandMembershipsHelper
	def role_finder
		BandMembership.where(user_id: "#{@user.id}").pluck(:role).join
	end
end
