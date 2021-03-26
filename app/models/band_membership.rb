class BandMembership < ApplicationRecord
	belongs_to :user, class_name: "user", foreign_key: "user_id"
	belongs_to :band, class_name: "band", foreign_key: "band_id"
end
