class Band < ApplicationRecord
	has_many :band_memberships
	has_many :users, through: :band_memberships
	validates :name, presence: true
	validates_uniqueness_of :name, on: :create, message: "someone already made that band"
	validates_associated :users, on: :create
end
