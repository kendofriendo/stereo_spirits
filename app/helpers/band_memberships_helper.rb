module BandMembershipsHelper
	def user_role(id)
			#How can I access this association on the join table and pair it with each user of the band? 
		BandMembership.where(user_id: id).pick(:role)
	end

end
