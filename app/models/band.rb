class Band < ApplicationRecord
	has_many :band_memberships
	has_many :users, through: :band_memberships
	validates_uniqueness_of :name, on: :create, message: "someone already made that band"
		scope :members, -> {  where("BandMembership.joinable = ?", true)}
end
