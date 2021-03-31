require 'faker'

def create_admin
	unless User.find_by(username: "admin")
		User.create(
			username: "admin",
			password: "password",
			email: "admin@email.com"
		)
end

20.times do 
	User.create(
		username: Faker::Twitter.unique.screen_name,
		email: Faker::Internet.unique.email,
		password: Faker::Internet.password
	)
end

10.times do 
	Band.create(
		name: Faker::Music.unique.band,
		description: Faker::Books::Lovecraft.sentence
	)
end

20.times do BandMembership.create(
		role: Faker::Music::instrument,
		band_id: Band.ids.sample,
		user_id: User.ids.sample
	)
end
binding.pry
end