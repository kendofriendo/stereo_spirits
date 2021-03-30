class CreateBands < ActiveRecord::Migration[6.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.text :description, optional: true
      t.timestamps null: false
    end
  end
  after_save 
end
