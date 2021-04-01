class BandMembership < ApplicationRecord
	belongs_to :user
	belongs_to :band
	scope :recent, -> { order(:created_at, :desc) }
end
