class BandMembership < ApplicationRecord
	belongs_to :user
	belongs_to :band
	scope :joinable, -> { where(joinable: 'true') }
end
