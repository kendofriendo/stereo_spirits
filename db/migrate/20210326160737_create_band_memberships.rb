class CreateBandMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :band_memberships do |t|
      t. belongs_to :user
      t. belongs_to :band
      t. name, optional: :true
      t.timestamps
    end
  end
end
