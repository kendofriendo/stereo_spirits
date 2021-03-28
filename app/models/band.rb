class Band < ApplicationRecord
	has_many :band_memberships
	has_many :users, through: :band_memberships
	
end
