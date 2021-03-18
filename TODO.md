# StereoSpirits

A site to find and collaborate on music projects with other musicians. Conceptually inspired by Github and version control. Functionality as a VCS platform is a stretch goal, but is helpful to frame the context of the app.

## Basic Functionality
Once registered a user can edit their profile if they wish, or start browsing and/or creating projecs. This app uses the term "gig" to refer to a project -- like a github repository -- created by a user. Once created, other users can opt to join the gig. Once at least one other user has joined a gig, a group is formed containing all of the users associated with the project. This group of users is referred to in the app as a 'band' with the Github equivalent being an orginization. 
## Gig 
##### Join Table

	belongs to user
	belongs to band
	title string 	<- user submittable
	description text 	<- user submittable
---

## Band
	has many gigs
	has many users through gigs
	name
	description
	members
---

## User
* has_many :gigs
* has_many :bands, through: :gigs
* username
* password
* email
* 
---