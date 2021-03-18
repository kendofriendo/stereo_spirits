class AddAttributesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_index :users, :username, :string, :unique => true
    #Ex:- add_index("admin_users", "username")
  end
end
