module BandsHelper
	def random_band
		@random_band = Band.order(Arel.sql('RANDOM()')).first
	end	
end
