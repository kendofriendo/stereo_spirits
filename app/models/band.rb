class Band < ApplicationRecord
	has_many :band_memberships
	has_many :users, through: :band_memberships
	validates_uniqueness_of :name, on: :create, message: "someone already made that band"
	accepts_nested_attributes_for :band_memberships
		scope :biggest, -> { where(:attibute => value)}
		# Ex:- scope :active, -> {where(:active => true)}
end
