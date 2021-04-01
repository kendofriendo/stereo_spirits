class Band < ApplicationRecord
	has_many :band_memberships
	has_many :users, through: :band_memberships
	validates_associated :users, on: :create
	validates_uniqueness_of :name, on: :create, message: "must be unique"
	
end
