class Band < ApplicationRecord
	has_many :band_memberships
	has_many :users, through: :band_memberships
	validates_associated :users, on: :create
end
