require 'faker'
require 'pry'

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

10.times do BandMembership.create(
		role: Faker::Music::unique.instrument,
		band_id: Band.ids.sample,
		user_id: User.ids.sample,
		joinable: Faker::boolean.boolean
	)
end

User.create_or_find_by(username: "admin", password: "password", email: "admin@email.com")
