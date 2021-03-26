module GigsHelper
	def random_gig
		random_gig = Gig.order(Arel.sql('RANDOM()')).first
	end
end
