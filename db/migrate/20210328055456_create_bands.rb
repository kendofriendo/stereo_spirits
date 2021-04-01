class CreateBands < ActiveRecord::Migration[6.1]
  def change
    create_table :bands do |t|
      t.string :name, :null => false, :unique => true
      t.text :description, optional: true
      t.timestamps null: false
    end
  end
end
