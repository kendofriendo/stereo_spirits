require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
	BandMembership.create(
		role: Faker::Music::instrument,
		band_id: Band.ids.sample,
		user_id: User.ids.sample
	)
end