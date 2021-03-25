class AddJoinableToGigs < ActiveRecord::Migration[6.1]
  def change
    add_column :gigs, :joinable, :boolean
  end
end
