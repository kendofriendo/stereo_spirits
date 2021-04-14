module BandMembershipsHelper
	def user_role(id)
		BandMembership.where(user_id: id).pick(:role)
	end

end
