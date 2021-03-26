# StereoSpirits

A site to find and collaborate on music projects with other musicians. Conceptually inspired by Github and version control. Functionality as a VCS platform is a stretch goal, but is helpful to frame the context of the app.

# PROJECT REQUIREMENTS

~~* Use the Ruby on Rails framework.~~

Your models must:
•~~Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships~~

• ~~Include a many-to-many relationship implemented with has_many :through associations.~~
* The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user
* Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.
* You must include at least one class level ActiveRecord scope method (Links to an external site.). a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods (Links to an external site.) within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).
* ~~Your application must provide standard user authentication, including signup, login, logout, and passwords.~~
* ~~Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...~~
* You must include and make use of a nested resource with the appropriate RESTful URLs.
* You must include a nested new route with form that relates to the parent resource
* You must include a nested index or show route
* Your forms should correctly display validation errors.
	* Your fields should be enclosed within a fieldswitherrors class
	* Error messages describing the validation failures must be present within the view.
* ~~Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.~~
* ~~Logic present in your controllers should be encapsulated as methods in your models.~~
* ~~Your views should use helper methods and partials when appropriate.~~
* ~~Follow patterns in the Rails Style Guide (Links to an external site.) and the Ruby Style Guide (Links to an external site.).~~
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