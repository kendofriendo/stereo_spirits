module UsersHelper
	def random_user
		@random_user = User.order(Arel.sql('RANDOM()')).first
	end
end
