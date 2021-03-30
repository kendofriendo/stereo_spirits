class AddJoinableToBandMemberships < ActiveRecord::Migration[6.1]
  def change
    add_column :band_memberships, :joinable, :boolean, optional: true
  end
end
