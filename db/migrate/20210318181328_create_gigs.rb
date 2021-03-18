class CreateGigs < ActiveRecord::Migration[6.1]
  def change
    create_table :gigs do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :band, null: false, foreign_key: true

      t.timestamps
    end
  end
end
