class Band < ApplicationRecord
	has_many :band_memberships
	has_many :users, through: :band_memberships
	has_many :gigs, through: :users
	
	attr_accessible :name, :description, :isPublic, :tag_list, :owner
end
