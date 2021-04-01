module BandsHelper
	def random_band
		random_band = Band.order(Arel.sql('RANDOM()')).first
	end	
	def recent_band(limit)
		names = Band.group(:created_at).limit(limit)
		user_ids = Band.group(:created_at).limit(limit).pluck(:users)
	end
	def member
		@band = Band.find(params[:id])
		@band.users.each
	end
end
