class CreateBandMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :band_memberships do |t|
      t.belongs_to :user, foreign_key: "true"
      t.belongs_to :band, foreign_key: "true"
      t.string :role, optional: true
      t.timestamps null: false
    end
  end
end
