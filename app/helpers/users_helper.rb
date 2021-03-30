module UsersHelper
	def random_user
		3.times {|u| [] << User.all.sample.username}
		ary = [] << User.all.sample.username
	end
end